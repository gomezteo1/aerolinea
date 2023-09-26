--cliente 
ALTER TABLE cliente
ADD CONSTRAINT chk_cedula
CHECK (cedula > 1);

alter table cliente 
ADD CONSTRAINT chk_fechaNacimiento
Check (fecha_nacimiento >= 18);

alter table cliente
add constraint chk_telefono
check (telefono>30000000000);

ALTER TABLE cliente
ADD CONSTRAINT chk_nombre
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE cliente
ADD CONSTRAINT chk_apellido
CHECK (apellido NOT like '%[^A-Za-z ]%');

-----equipaje

alter table equipaje 
add constraint chk_peso
check (peso>=0)

-----reserva

ALTER TABLE reserva
ADD CONSTRAINT chk_fecha_reserva
CHECK (fecha_reserva >= GETDATE());

ALTER TABLE reserva
ADD CONSTRAINT chk_estado_reserva
CHECK (fecha_reserva IN ('confirmada', 'pendiente'));

ALTER TABLE reserva
ADD CONSTRAINT chk_reserva_fecha
CHECK (fecha_reserva >= GETDATE() AND estado_reserva IN ('confirmada', 'pendiente'));

ALTER TABLE reserva
ADD CONSTRAINT chk_fecha_estado_reserva
CHECK (estado_reserva IN ('confirmada', 'pendiente'));

ALTER TABLE empleado
ADD CONSTRAINT chk_cedula 
CHECK (cedula > 1);

----------- empleados

ALTER TABLE empleado
ADD CONSTRAINT chk_nombre
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE empleado
ADD CONSTRAINT chk_apellido
CHECK (apellido NOT like '%[^A-Za-z ]%');

--------------Vuelo

ALTER TABLE vuelo
ADD CONSTRAINT chk_capacidad_maxima
CHECK (cantidad_asientos > 0);

ALTER TABLE boleto
ADD CONSTRAINT chk_precio_vuelo
CHECK (precio >= 0);

ALTER TABLE vuelo
ADD CONSTRAINT chk_fecha_hora_salida
CHECK (fecha_salida >= GETDATE());


