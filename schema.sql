
CREATE DATABASE IF NOT EXISTS hotel_db;
USE hotel_db;

-- ============================================
-- CLIENTE
-- ============================================
CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(20)
);

-- ============================================
-- EMPLEADO
-- ============================================
CREATE TABLE EMPLEADO (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100) NOT NULL
);

-- ============================================
-- HABITACION
-- ============================================
CREATE TABLE HABITACION (
    id_habitacion INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- ============================================
-- RESERVA
-- ============================================
CREATE TABLE RESERVA (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_habitacion INT NOT NULL,

    CONSTRAINT fk_reserva_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES CLIENTE(id_cliente),

    CONSTRAINT fk_reserva_habitacion
        FOREIGN KEY (id_habitacion)
        REFERENCES HABITACION(id_habitacion),

    CONSTRAINT chk_fechas_reserva
        CHECK (fecha_salida > fecha_entrada)
);

-- ============================================
-- PAGO
-- ============================================
CREATE TABLE PAGO (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pago DATETIME NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    id_reserva INT NOT NULL,
    id_empleado INT NOT NULL,

    CONSTRAINT fk_pago_reserva
        FOREIGN KEY (id_reserva)
        REFERENCES RESERVA(id_reserva),

    CONSTRAINT fk_pago_empleado
        FOREIGN KEY (id_empleado)
        REFERENCES EMPLEADO(id_empleado)
);

-- ============================================
-- LOG_HABITACION
-- ============================================
CREATE TABLE LOG_HABITACION (
    timestamp DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    id_habitacion INT NOT NULL,

    PRIMARY KEY (timestamp),

    CONSTRAINT fk_log_habitacion
        FOREIGN KEY (id_habitacion)
        REFERENCES HABITACION(id_habitacion)
);
