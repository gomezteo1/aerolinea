use aerolinea

--Indices agrupados

CREATE INDEX idx_cliente ON cliente (cedula,nombre);

CREATE INDEX idx_nombre ON empleado (nombre,apellido);

CREATE INDEX idx_no_vuelo ON vuelo (no_vuelo,duracion_vuelo);

--Indices no agrupados

CREATE INDEX idx_no_codigo_IATA ON destino (codigo_IATA);

CREATE INDEX idx_no_nombre_estado ON estado_vuelo (nombre_estado);

CREATE INDEX idx_no_tipo_vuelo ON tipo_vuelo (nombre_vuelo);

--Indices columnares

CREATE NONCLUSTERED COLUMNSTORE INDEX idx_equipaje_id_cliente
ON equipaje (id_cliente);

CREATE NONCLUSTERED COLUMNSTORE INDEX idx_reserva_id_cliente
ON reserva (id_cliente);


CREATE NONCLUSTERED COLUMNSTORE INDEX idx_vuelo_id_destino_origen
ON vuelo (id_destino_origen);

