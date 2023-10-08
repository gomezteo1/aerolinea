USE aerolinea;

--cliente 
ALTER TABLE cliente
ADD CONSTRAINT chk_cedula_cliente
CHECK (cedula > 1);

alter table cliente 
ADD CONSTRAINT chk_fechaNacimiento
Check (DATEDIFF(year,fecha_nacimiento,GETDATE()) >= 18);

alter table cliente
add constraint chk_telefono_cliente
check (telefono>3000000000);

ALTER TABLE cliente
ADD CONSTRAINT chk_nombre_cliente
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE cliente
ADD CONSTRAINT chk_apellido_cliente
CHECK (apellido NOT like '%[^A-Za-z ]%');

-----equipaje

alter table equipaje 
add constraint chk_peso
check (peso>=0)

-----reserva

ALTER TABLE reserva
ADD CONSTRAINT chk_fecha_reserva
CHECK (YEAR(fecha_reserva) >= YEAR(GETDATE()));

ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaReservaMinima
CHECK (fecha_reserva >= '2023-01-01');

----------- empleados

ALTER TABLE empleado
ADD CONSTRAINT chk_cedula_empleado
CHECK (cedula > 1);

ALTER TABLE empleado
ADD CONSTRAINT chk_nombre_empleado
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE empleado
ADD CONSTRAINT chk_apellido_empleado
CHECK (apellido NOT like '%[^A-Za-z ]%');

--------------avion

ALTER TABLE avion
ADD CONSTRAINT chk_capacidad_maxima
CHECK (cantidad_asientos > 0);

ALTER TABLE boleto
ADD CONSTRAINT chk_precio_vuelo
CHECK (precio >= 0);

ALTER TABLE vuelo
ADD CONSTRAINT chk_fecha_hora_salida
CHECK (fecha_hora_salida >= GETDATE());


