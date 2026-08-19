-- ============================================================
-- BACKUP BASE: solo estructura
-- ============================================================

mysqldump -u root -p --no-data hotel_db > backup_base.sql;


-- ============================================================
-- BACKUPS COMPLETOS
-- ============================================================

mysqldump -u root -p hotel_db > full_dia1.sql;

mysqldump -u root -p hotel_db > full_dia2.sql;

mysqldump -u root -p hotel_db > full_dia3.sql;

mysqldump -u root -p hotel_db > full_dia4.sql;

mysqldump -u root -p hotel_db > full_dia5.sql;


-- ============================================================
-- MEDICIÓN DEL TIEMPO DE CREACIÓN DE BACKUPS COMPLETOS
-- ============================================================

/usr/bin/time -f 'Tiempo real: %e segundos' \
mysqldump -u root -p hotel_db > full_diaX.sql;


-- ============================================================
-- BACKUPS INCREMENTALES
-- Se generan a partir de los Binary Logs de MySQL.
-- ============================================================

-- Día 1
mysqlbinlog --read-from-remote-server \
--host=localhost -u root -p \
--start-position=3288 \
--stop-position=8357 \
--database=hotel_db \
binlog.000214 > incremental_dia1.sql;


-- Día 2
mysqlbinlog --read-from-remote-server \
--host=localhost -u root -p \
--start-position=8357 \
--stop-position=11494 \
--database=hotel_db \
binlog.000214 > incremental_dia2.sql;


-- Día 3
mysqlbinlog --read-from-remote-server \
--host=localhost -u root -p \
--start-position=11494 \
--database=hotel_db \
binlog.000214 \
--stop-position=1777 \
binlog.000215 > incremental_dia3.sql;


-- Día 4
mysqlbinlog --read-from-remote-server \
--host=localhost -u root -p \
--start-position=1777 \
--stop-position=7095 \
--database=hotel_db \
binlog.000215 > incremental_dia4.sql;


-- Día 5
mysqlbinlog --read-from-remote-server \
--host=localhost -u root -p \
--start-position=7095 \
--stop-position=8619 \
--database=hotel_db \
binlog.000215 > incremental_dia5.sql;


-- ============================================================
-- RESTAURACIÓN DE BACKUPS COMPLETOS
-- Cada backup se restaura de forma independiente.
-- ============================================================

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < full_dia1.sql;

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < full_dia2.sql;

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < full_dia3.sql;

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < full_dia4.sql;

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < full_dia5.sql;


-- ============================================================
-- RESTAURACIÓN DE BACKUPS INCREMENTALES
-- Primero se restaura el backup base y luego los incrementales
-- en el orden en que fueron generados.
-- ============================================================

mysql -u root -p -e "DROP DATABASE hotel_db; CREATE DATABASE hotel_db;"

mysql -u root -p hotel_db < backup_base.sql;

mysql -u root -p hotel_db < incremental_dia1.sql;

mysql -u root -p hotel_db < incremental_dia2.sql;

mysql -u root -p hotel_db < incremental_dia3.sql;

mysql -u root -p hotel_db < incremental_dia4.sql;

mysql -u root -p hotel_db < incremental_dia5.sql;


-- ============================================================
-- VERIFICACIÓN DE LOS DATOS
-- ============================================================

SELECT * FROM CLIENTE;
SELECT COUNT(*) AS total_clientes FROM CLIENTE;

SELECT * FROM HABITACION;
SELECT COUNT(*) AS total_habitaciones FROM HABITACION;

SELECT * FROM EMPLEADO;
SELECT COUNT(*) AS total_empleados FROM EMPLEADO;

SELECT * FROM RESERVA;
SELECT COUNT(*) AS total_reservas FROM RESERVA;

SELECT * FROM PAGO;
SELECT COUNT(*) AS total_pagos FROM PAGO;

SELECT * FROM LOG_HABITACION;
SELECT COUNT(*) AS total_logs FROM LOG_HABITACION;