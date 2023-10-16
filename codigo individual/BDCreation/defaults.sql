USE aerolinea

-- cliente hasta boleto

ALTER TABLE cliente
ADD CONSTRAINT df_empleado_empresa DEFAULT 320666221 FOR telefono;

ALTER TABLE empleado
ADD CONSTRAINT df_telefono_empresa DEFAULT 320666224 FOR telefono;

ALTER TABLE avion
ADD CONSTRAINT df_fecha_fabricacion DEFAULT ('1995-01-01') FOR fabrication_year;

ALTER TABLE vuelo
ADD CONSTRAINT df_duracion_vuelo DEFAULT (10) FOR duracion_vuelo;

ALTER TABLE vuelo
ADD CONSTRAINT df_fecha_hora_salida DEFAULT (GETDATE()) FOR fecha_hora_salida;
