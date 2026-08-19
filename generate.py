from faker import Faker
from datetime import datetime, timedelta
import random
import os

# ============================================================
# CONFIGURATION
# ============================================================

fake = Faker("es_ES")
random.seed(42)
Faker.seed(42)

NUM_CLIENTES = 40
NUM_HABITACIONES = 30
NUM_EMPLEADOS = 25
NUM_RESERVAS = 150
NUM_LOGS = 60
NUM_PAGOS = 150

OUTPUT_DIR = "load"

os.makedirs(OUTPUT_DIR, exist_ok=True)


# ============================================================
# HELPER FUNCTIONS
# ============================================================

def sql_string(value):
    """Escapes a Python string for MySQL."""
    if value is None:
        return "NULL"

    value = str(value)
    value = value.replace("\\", "\\\\")
    value = value.replace("'", "''")

    return f"'{value}'"


def random_date(start_date, end_date):
    """Generates a random date between two dates."""
    days = (end_date - start_date).days
    return start_date + timedelta(days=random.randint(0, days))


# ============================================================
# DATA STORAGE
# ============================================================

clientes = []
habitaciones = []
empleados = []
reservas = []
pagos = []
logs_iniciales = []
logs_finales = []


# ============================================================
# 1. CLIENTES
# ============================================================

for i in range(1, NUM_CLIENTES + 1):

    clientes.append({
        "id": i,
        "nombre": fake.name(),
        "correo": f"cliente{i}@example.com",
        "telefono": fake.phone_number()[:20]
    })


# ============================================================
# 2. HABITACIONES
# ============================================================

tipos_habitacion = [
    "Individual",
    "Doble",
    "Triple",
    "Suite",
    "Familiar"
]

precios = {
    "Individual": 350.00,
    "Doble": 500.00,
    "Triple": 650.00,
    "Suite": 900.00,
    "Familiar": 750.00
}

for i in range(1, NUM_HABITACIONES + 1):

    tipo = random.choice(tipos_habitacion)

    habitaciones.append({
        "id": i,
        "tipo": tipo,
        "precio": precios[tipo]
    })


# ============================================================
# 3. EMPLEADOS
# ============================================================

puestos = [
    "Recepcionista",
    "Administrador",
    "Gerente",
    "Limpieza",
    "Mantenimiento",
    "Contador"
]

for i in range(1, NUM_EMPLEADOS + 1):

    empleados.append({
        "id": i,
        "nombre": fake.name(),
        "puesto": random.choice(puestos)
    })


# ============================================================
# 4. RESERVAS
# ============================================================

fecha_min = datetime(2026, 1, 1).date()
fecha_max = datetime(2026, 12, 15).date()

# Reservations already assigned to each room.
# Used to prevent overlapping reservations.
reservas_por_habitacion = {
    i: [] for i in range(1, NUM_HABITACIONES + 1)
}

for i in range(1, NUM_RESERVAS + 1):

    id_cliente = random.randint(1, NUM_CLIENTES)

    reserva_valida = False
    intentos = 0
    MAX_INTENTOS = 1000

    while not reserva_valida and intentos < MAX_INTENTOS:

        intentos += 1

        id_habitacion = random.randint(
            1,
            NUM_HABITACIONES
        )

        fecha_entrada = random_date(
            fecha_min,
            fecha_max
        )

        noches = random.randint(1, 7)

        fecha_salida = (
            fecha_entrada +
            timedelta(days=noches)
        )

        reserva_valida = True

        # Check for overlapping reservations
        # in the same room.
        for existente in reservas_por_habitacion[
            id_habitacion
        ]:

            if (
                fecha_entrada < existente["fecha_salida"]
                and
                fecha_salida > existente["fecha_entrada"]
            ):
                reserva_valida = False
                break

    if not reserva_valida:
        raise RuntimeError(
            f"No se pudo generar una reserva válida "
            f"después de {MAX_INTENTOS} intentos."
        )

    reserva = {
        "id": i,
        "fecha_entrada": fecha_entrada,
        "fecha_salida": fecha_salida,
        "id_cliente": id_cliente,
        "id_habitacion": id_habitacion
    }

    reservas.append(reserva)

    reservas_por_habitacion[
        id_habitacion
    ].append(reserva)


# ============================================================
# 5. LOG HABITACION - FIRST LOAD
# ============================================================

estados_iniciales = [
    "Disponible",
    "Disponible",
    "Disponible",
    "Mantenimiento"
]

base_timestamp = datetime(
    2026,
    1,
    1,
    8,
    0,
    0
)

for i in range(1, NUM_LOGS + 1):

    timestamp = base_timestamp + timedelta(minutes=i)

    logs_iniciales.append({
        "timestamp": timestamp,
        "status": random.choice(estados_iniciales),
        "id_habitacion": random.randint(1, NUM_HABITACIONES)
    })


# ============================================================
# 6. PAGOS
# ============================================================

metodos_pago = [
    "Efectivo",
    "Tarjeta",
    "Transferencia"
]

for i in range(1, NUM_PAGOS + 1):

    reserva = reservas[i - 1]

    id_habitacion = reserva["id_habitacion"]

    habitacion = habitaciones[
        id_habitacion - 1
    ]

    noches = (
        reserva["fecha_salida"] -
        reserva["fecha_entrada"]
    ).days

    monto = habitacion["precio"] * noches

    fecha_pago = datetime.combine(
        reserva["fecha_entrada"],
        datetime.min.time()
    )

    fecha_pago += timedelta(
        hours=random.randint(8, 18),
        minutes=random.randint(0, 59)
    )

    pagos.append({
        "id": i,
        "fecha_pago": fecha_pago,
        "monto": monto,
        "metodo_pago": random.choice(metodos_pago),
        "id_reserva": reserva["id"],
        "id_empleado": random.randint(
            1,
            NUM_EMPLEADOS
        )
    })


# ============================================================
# 7. LOG HABITACION - SECOND LOAD
# ============================================================

estados_finales = [
    "Disponible",
    "Ocupada",
    "Ocupada",
    "Mantenimiento"
]

base_timestamp_final = datetime(
    2026,
    6,
    1,
    8,
    0,
    0
)

for i in range(1, NUM_LOGS + 1):

    timestamp = (
        base_timestamp_final +
        timedelta(minutes=i)
    )

    logs_finales.append({
        "timestamp": timestamp,
        "status": random.choice(estados_finales),
        "id_habitacion": random.randint(
            1,
            NUM_HABITACIONES
        )
    })


# ============================================================
# FILE 1
# CLIENTE + HABITACION + EMPLEADO
# ============================================================

file1 = os.path.join(
    OUTPUT_DIR,
    "01_clientes_habitaciones_empleados.sql"
)

with open(file1, "w", encoding="utf-8") as f:

    f.write(
        "-- ============================================================\n"
        "-- ARCHIVO 1: CLIENTE, HABITACION Y EMPLEADO\n"
        "-- CLIENTE: 40 registros\n"
        "-- HABITACION: 30 registros\n"
        "-- EMPLEADO: 25 registros\n"
        "-- ============================================================\n\n"
    )

    # CLIENTE
    f.write("-- CLIENTE\n")

    f.write(
        "INSERT INTO CLIENTE "
        "(id_cliente, nombre, correo, telefono) VALUES\n"
    )

    values = []

    for cliente in clientes:

        values.append(
            f"({cliente['id']}, "
            f"{sql_string(cliente['nombre'])}, "
            f"{sql_string(cliente['correo'])}, "
            f"{sql_string(cliente['telefono'])})"
        )

    f.write(",\n".join(values))
    f.write(";\n\n")

    # HABITACION
    f.write("-- HABITACION\n")

    f.write(
        "INSERT INTO HABITACION "
        "(id_habitacion, tipo, precio) VALUES\n"
    )

    values = []

    for habitacion in habitaciones:

        values.append(
            f"({habitacion['id']}, "
            f"{sql_string(habitacion['tipo'])}, "
            f"{habitacion['precio']:.2f})"
        )

    f.write(",\n".join(values))
    f.write(";\n\n")

    # EMPLEADO
    f.write("-- EMPLEADO\n")

    f.write(
        "INSERT INTO EMPLEADO "
        "(id_empleado, nombre, puesto) VALUES\n"
    )

    values = []

    for empleado in empleados:

        values.append(
            f"({empleado['id']}, "
            f"{sql_string(empleado['nombre'])}, "
            f"{sql_string(empleado['puesto'])})"
        )

    f.write(",\n".join(values))
    f.write(";\n")


# ============================================================
# FILE 2
# RESERVA
# ============================================================

file2 = os.path.join(
    OUTPUT_DIR,
    "02_reservas.sql"
)

with open(file2, "w", encoding="utf-8") as f:

    f.write(
        "-- ============================================================\n"
        "-- ARCHIVO 2: RESERVAS\n"
        "-- 150 registros\n"
        "-- ============================================================\n\n"
    )

    f.write(
        "INSERT INTO RESERVA "
        "(id_reserva, fecha_entrada, fecha_salida, "
        "id_cliente, id_habitacion) VALUES\n"
    )

    values = []

    for reserva in reservas:

        values.append(
            f"({reserva['id']}, "
            f"{sql_string(reserva['fecha_entrada'])}, "
            f"{sql_string(reserva['fecha_salida'])}, "
            f"{reserva['id_cliente']}, "
            f"{reserva['id_habitacion']})"
        )

    f.write(",\n".join(values))
    f.write(";\n")


# ============================================================
# FILE 3
# LOG HABITACION - FIRST LOAD
# ============================================================

file3 = os.path.join(
    OUTPUT_DIR,
    "03_log_habitacion_inicial.sql"
)

with open(file3, "w", encoding="utf-8") as f:

    f.write(
        "-- ============================================================\n"
        "-- ARCHIVO 3: PRIMERA CARGA DE LOG_HABITACION\n"
        "-- 60 registros\n"
        "-- ============================================================\n\n"
    )

    f.write(
        "INSERT INTO LOG_HABITACION "
        "(timestamp, status, id_habitacion) VALUES\n"
    )

    values = []

    for log in logs_iniciales:

        values.append(
            f"({sql_string(log['timestamp'].strftime('%Y-%m-%d %H:%M:%S'))}, "
            f"{sql_string(log['status'])}, "
            f"{log['id_habitacion']})"
        )

    f.write(",\n".join(values))
    f.write(";\n")


# ============================================================
# FILE 4
# PAGOS
# ============================================================

file4 = os.path.join(
    OUTPUT_DIR,
    "04_pagos.sql"
)

with open(file4, "w", encoding="utf-8") as f:

    f.write(
        "-- ============================================================\n"
        "-- ARCHIVO 4: PAGOS\n"
        "-- 150 registros\n"
        "-- ============================================================\n\n"
    )

    f.write(
        "INSERT INTO PAGO "
        "(id_pago, fecha_pago, monto, metodo_pago, "
        "id_reserva, id_empleado) VALUES\n"
    )

    values = []

    for pago in pagos:

        values.append(
            f"({pago['id']}, "
            f"{sql_string(pago['fecha_pago'].strftime('%Y-%m-%d %H:%M:%S'))}, "
            f"{pago['monto']:.2f}, "
            f"{sql_string(pago['metodo_pago'])}, "
            f"{pago['id_reserva']}, "
            f"{pago['id_empleado']})"
        )

    f.write(",\n".join(values))
    f.write(";\n")


# ============================================================
# FILE 5
# LOG HABITACION - SECOND LOAD
# ============================================================

file5 = os.path.join(
    OUTPUT_DIR,
    "05_log_habitacion_final.sql"
)

with open(file5, "w", encoding="utf-8") as f:

    f.write(
        "-- ============================================================\n"
        "-- ARCHIVO 5: SEGUNDA CARGA DE LOG_HABITACION\n"
        "-- 60 registros\n"
        "-- ============================================================\n\n"
    )

    f.write(
        "INSERT INTO LOG_HABITACION "
        "(timestamp, status, id_habitacion) VALUES\n"
    )

    values = []

    for log in logs_finales:

        values.append(
            f"({sql_string(log['timestamp'].strftime('%Y-%m-%d %H:%M:%S'))}, "
            f"{sql_string(log['status'])}, "
            f"{log['id_habitacion']})"
        )

    f.write(",\n".join(values))
    f.write(";\n")


# ============================================================
# SUMMARY
# ============================================================

print("=" * 60)
print("ARCHIVOS GENERADOS CORRECTAMENTE")
print("=" * 60)

print(f"1. {file1}")
print(f"   CLIENTE:     {len(clientes)}")
print(f"   HABITACION:  {len(habitaciones)}")
print(f"   EMPLEADO:    {len(empleados)}")

print(f"\n2. {file2}")
print(f"   RESERVA:     {len(reservas)}")

print(f"\n3. {file3}")
print(f"   LOG_HABITACION: {len(logs_iniciales)}")

print(f"\n4. {file4}")
print(f"   PAGO:        {len(pagos)}")

print(f"\n5. {file5}")
print(f"   LOG_HABITACION: {len(logs_finales)}")

print("\nTodos los archivos se encuentran en:")
print(os.path.abspath(OUTPUT_DIR))