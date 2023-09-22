USE aerolinea

-- CHECKS

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






/*
--tiene la relacion de equipaje con cliente{
alter table
  equipaje
add
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);
--}
  --reserva a cliente
alter table
  reserva
add
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) --}
  --tripulacion con tipo_empleado y empleado{
alter table
  tripulacion
add
  FOREIGN KEY (id_tipo_empleado) REFERENCES tipo_empleado(id_tipo_empleado);
alter table
  tripulacion
add
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);
--}
  --{ dest�no pais
alter table
  destino
add
  FOREIGN KEY (id_pais) REFERENCES pais(id_pais);
--}
  --{pais dirrecion
alter table
  pais
add
  FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion);
--}
  --{avion
alter table
  avion
add
  FOREIGN KEY (id_estado_avion) REFERENCES estado_avion(id_estado_avion);
--}
  --{boleto
alter table
  boleto
add
  FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva);
--}
  --vuelo con las otras tablas{
alter table
  vuelo
add
  FOREIGN KEY (id_tripulacion) REFERENCES tripulacion(id_tripulacion);
alter table
  vuelo
add
  FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva);
alter table
  vuelo
add
  FOREIGN KEY (id_avion) REFERENCES avion(id_avion);
alter table
  vuelo
add
  FOREIGN KEY (id_destino_origen) REFERENCES destino(id_destino);
alter table
  vuelo
add
  FOREIGN KEY (id_destino_llegada) REFERENCES destino(id_destino);
alter table
  vuelo
add
  FOREIGN KEY (id_estado_vuelo) REFERENCES estado_vuelo(id_estado_vuelo);
alter table
  vuelo
add
  FOREIGN KEY (id_tipo_vuelo) REFERENCES tipo_vuelo(id_tipo_vuelo);
--}
*/