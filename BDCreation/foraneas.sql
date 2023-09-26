USE aerolinea

-- FORANEAS

ALTER TABLE equipaje
ADD CONSTRAINT FK_equipaje_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

ALTER TABLE reserva
ADD CONSTRAINT FK_reserva_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

ALTER TABLE boleto
ADD CONSTRAINT FK_boleto_reserva
FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)

ALTER TABLE tripulacion
ADD CONSTRAINT FK_tripulacion_empleado
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)

ALTER TABLE tripulacion
ADD CONSTRAINT FK_tripulacion_tipo_empleado
FOREIGN KEY (id_tipo_empleado) REFERENCES tipo_empleado(id_tipo_empleado)

ALTER TABLE avion
ADD CONSTRAINT FK_avion_estado_avion
FOREIGN KEY (id_estado_avion) REFERENCES estado_avion(id_estado_avion)


ALTER TABLE pais
ADD CONSTRAINT FK_pais_direccion
FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)

ALTER TABLE destino
ADD CONSTRAINT FK_destino_pais
FOREIGN KEY (id_pais) REFERENCES pais(id_pais)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_tripulacion
FOREIGN KEY (id_tripulacion) REFERENCES tripulacion(id_tripulacion)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_reserva
FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_avion
FOREIGN KEY (id_avion) REFERENCES avion(id_avion)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_destino_origen
FOREIGN KEY (id_destino_origen) REFERENCES destino(id_destino)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_destino_llegada
FOREIGN KEY (id_destino_llegada) REFERENCES destino(id_destino)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_estado_vuelo
FOREIGN KEY (id_estado_vuelo) REFERENCES estado_vuelo(id_estado_vuelo)

ALTER TABLE vuelo
ADD CONSTRAINT FK_vuelo_tipo_vuelo
FOREIGN KEY (id_tipo_vuelo) REFERENCES tipo_vuelo(id_tipo_vuelo)

