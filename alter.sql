--cliente restrincion
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
ADD CONSTRAINT CHK_EstadoReserva
CHECK (estadoReserva IN ('confirmada', 'pendiente'));


ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaYEstadoReserva
CHECK (fechaReserva >= GETDATE() AND estadoReserva IN ('confirmada', 'pendiente'));

ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaYEstadoReserva2
CHECK (estadoReserva IN ('confirmada', 'pendiente'));

ALTER TABLE empleado
ADD CONSTRAINT chk_cedula 
CHECK (cedula > 1);


-- empleados
ALTER TABLE empleado
ADD CONSTRAINT chk_nombre
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE empleado
ADD CONSTRAINT chk_apellido
CHECK (apellido NOT like '%[^A-Za-z ]%');



--Vuelo
ALTER TABLE vuelo
ADD CONSTRAINT CHK_CapacidadMaxima
CHECK (CapacidadMaxima > 0);
ALTER TABLE vuelo
ADD CONSTRAINT CHK_PrecioVuelo
CHECK (precioVuelo >= 0);
ALTERTABLE vuelo
ADD CONSTRAINT CHK_FechaHoraSalida
CHECK (fechaSalida >= GETDATE());


