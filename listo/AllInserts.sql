USE aerolinea

--- CLIENTES

-- INSERT 1
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (1234567890, 'Juan', 'Perez', '1990-05-15', 3034567890, 'juan@example.com');

-- INSERT 2
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (9876543210, 'Maria', 'Gomez', '1985-08-20', 9876543210, 'maria@example.com');

-- INSERT 3
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (4567890123, 'Carlos', 'Rodriguez', '1998-03-10', 4567890123, 'carlos@example.com');

-- INSERT 4
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (7890123456, 'Laura', 'Lopez', '1995-12-05', 7890123456, 'laura@example.com');

-- INSERT 5
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (2345678901, 'Pedro', 'Mendoza', '1980-09-25', 3345678901, 'pedro@example.com');

-- INSERT 6
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (5678901234, 'Ana', 'Martinez', '1987-06-30', 5678901234, 'ana@example.com');

-- INSERT 7
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (8901234567, 'Luis', 'Sanchez', '1993-02-18', 8901234567, 'luis@example.com');

-- INSERT 8
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (3456789012, 'Sofia', 'Fernandez', '1997-11-12', 3456789012, 'sofia@example.com');

-- INSERT 9
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (6789012345, 'Diego', 'Gonzalez', '1983-07-08', 6789012345, 'diego@example.com');

-- INSERT 10
INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (9012345678, 'Elena', 'Ramirez', '1989-04-03', 9012345678, 'elena@example.com');


--- EQUIPAJE

-- INSERT 1
INSERT INTO equipaje (id_cliente, peso)
VALUES (1, 20);

-- INSERT 2
INSERT INTO equipaje (id_cliente, peso)
VALUES (2, 15);

-- INSERT 3
INSERT INTO equipaje (id_cliente, peso)
VALUES (3, 25);

-- INSERT 4
INSERT INTO equipaje (id_cliente, peso)
VALUES (4, 18);

-- INSERT 5
INSERT INTO equipaje (id_cliente, peso)
VALUES (5, 22);

-- INSERT 6
INSERT INTO equipaje (id_cliente, peso)
VALUES (6, 19);

-- INSERT 7
INSERT INTO equipaje (id_cliente, peso)
VALUES (7, 27);

-- INSERT 8
INSERT INTO equipaje (id_cliente, peso)
VALUES (8, 14);

-- INSERT 9
INSERT INTO equipaje (id_cliente, peso)
VALUES (9, 23);

-- INSERT 10
INSERT INTO equipaje (id_cliente, peso)
VALUES (10, 16);

--- reservas

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (1, '2023-09-01');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (2, '2023-09-02');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (3, '2023-09-03');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (4, '2023-09-04');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (5, '2023-09-05');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (6, '2023-09-06');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (7, '2023-09-07');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (8, '2023-09-08');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (9, '2023-09-09');

INSERT INTO
  reserva (id_cliente, fecha_reserva)
VALUES
  (10, '2023-09-10');

--- BOLETO

-- INSERT 1
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (1, 350.50, '2023-10-05');

-- INSERT 2
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (2, 420.75, '2023-10-06');

-- INSERT 3
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (3, 275.00, '2023-10-07');

-- INSERT 4
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (4, 310.25, '2023-10-08');

-- INSERT 5
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (5, 400.00, '2023-10-09');

-- INSERT 6
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (6, 295.75, '2023-10-10');

-- INSERT 7
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (7, 375.80, '2023-10-11');

-- INSERT 8
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (8, 280.90, '2023-10-12');

-- INSERT 9
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (9, 365.25, '2023-10-13');

-- INSERT 10
INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (10, 320.40, '2023-10-14');


--- TIPO EMPLEADO

-- INSERT 1
INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Piloto');

-- INSERT 2
INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Azafata');

-- INSERT 3
INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Técnico de Mantenimiento');

-- INSERT 4
INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Supervisor de Vuelo');

-- INSERT 5
INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Despachador de Vuelo');


--- EMPLEADO

-- INSERT 1
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (1234567890, 'Ana', 'López', '2022-03-15', 35000.00, 9876543210);

-- INSERT 2
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (9876543210, 'Juan', 'Gómez', '2021-06-20', 42000.00, 1234567890);

-- INSERT 3
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (4567890123, 'Laura', 'Martínez', '2023-01-10', 30000.00, 5678901234);

-- INSERT 4
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (7890123456, 'Carlos', 'Rodríguez', '2023-02-28', 38000.00, 2345678901);

-- INSERT 5
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (2345678901, 'Sofía', 'Pérez', '2022-11-05', 32000.00, 9012345678);

-- INSERT 6
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (5678901234, 'Diego', 'Fernández', '2021-07-30', 41000.00, 3456789012);

-- INSERT 7
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (8901234567, 'Elena', 'Ramírez', '2022-08-18', 36000.00, 6789012345);

-- INSERT 8
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (3456789012, 'Pedro', 'Sánchez', '2021-12-12', 29000.00, 4567890123);

-- INSERT 9
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (6789012345, 'Luis', 'González', '2023-04-03', 40000.00, 8901234567);

-- INSERT 10
INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (9012345678, 'María', 'López', '2022-05-25', 37000.00, 7890123456);


--- TRIPULACION

-- INSERT 1
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (1, 1);

-- INSERT 2
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (2, 2);

-- INSERT 3
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (3, 3);

-- INSERT 4
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (4, 4);

-- INSERT 5
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (5, 5);

-- INSERT 6
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (6, 1);

-- INSERT 7
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (7, 2);

-- INSERT 8
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (8, 3);

-- INSERT 9
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (9, 4);

-- INSERT 10
INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (10, 5);


--- ESTADO AVION

-- INSERT 1
INSERT INTO estado_avion (nombre_estado)
VALUES ('Operativo');

-- INSERT 2
INSERT INTO estado_avion (nombre_estado)
VALUES ('En Mantenimiento');

-- INSERT 3
INSERT INTO estado_avion (nombre_estado)
VALUES ('En Reparación');

-- INSERT 4
INSERT INTO estado_avion (nombre_estado)
VALUES ('En Inspección');

-- INSERT 5
INSERT INTO estado_avion (nombre_estado)
VALUES ('Fuera de Servicio');


--- AVION

-- INSERT 1
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('AB12345', 'Boeing 737', 180, '2020-01-15', 1);

-- INSERT 2
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('CD67890', 'Airbus A320', 150, '2019-05-20', 2);

-- INSERT 3
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('EF12345', 'Boeing 787', 250, '2022-03-10', 1);

-- INSERT 4
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('GH67890', 'Airbus A350', 220, '2021-08-05', 3);

-- INSERT 5
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('IJ12345', 'Boeing 777', 200, '2020-12-01', 1);

-- INSERT 6
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('KL67890', 'Airbus A330', 170, '2023-02-28', 2);

-- INSERT 7
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('MN12345', 'Boeing 747', 300, '2021-07-15', 1);

-- INSERT 8
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('OP67890', 'Airbus A380', 350, '2019-10-10', 4);

-- INSERT 9
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('QR12345', 'Boeing 737', 180, '2022-04-20', 1);

-- INSERT 10
INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('ST67890', 'Airbus A320', 150, '2020-06-25', 5);

--- DIRECCION

-- INSERT 6
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de la Libertad 345', 'Ciudad F', '23456');

-- INSERT 7
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Playa 567', 'Ciudad G', '87654');

-- INSERT 8
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida del Sol 789', 'Ciudad H', '76543');

-- INSERT 9
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle del Río 901', 'Ciudad I', '34567');

-- INSERT 10
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de la Montaña 1234', 'Ciudad J', '12340');

-- INSERT 11
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle del Bosque 5678', 'Ciudad K', '56789');

-- INSERT 12
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida del Mar 4321', 'Ciudad L', '43210');

-- INSERT 13
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Luna 8765', 'Ciudad M', '87659');

-- INSERT 14
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de las Estrellas 2109', 'Ciudad N', '21098');

-- INSERT 15
INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Montaña 5432', 'Ciudad O', '54321');

--- PAIS

-- INSERT 1
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Estados Unidos', 'US', 1);

-- INSERT 2
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Canadá', 'CA', 2);

-- INSERT 3
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('México', 'MX', 3);

-- INSERT 4
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Reino Unido', 'UK', 4);

-- INSERT 5
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Francia', 'FR', 5);

-- INSERT 6
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Alemania', 'DE', 6);

-- INSERT 7
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('España', 'ES', 7);

-- INSERT 8
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Italia', 'IT', 8);

-- INSERT 9
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Australia', 'AU', 9);

-- INSERT 10
INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Brasil', 'BR', 10);

--- DESTINO

-- INSERT 1
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Nueva York', 'NYC', 1);

-- INSERT 2
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Toronto', 'YYZ', 2);

-- INSERT 3
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Ciudad de México', 'MEX', 3);

-- INSERT 4
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Londres', 'LHR', 4);

-- INSERT 5
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('París', 'CDG', 5);

-- INSERT 6
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Berlín', 'TXL', 6);

-- INSERT 7
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Madrid', 'MAD', 7);

-- INSERT 8
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Roma', 'FCO', 8);

-- INSERT 9
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Sídney', 'SYD', 9);

-- INSERT 10
INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Río de Janeiro', 'GIG', 10);


--- ESTADO VUELO

-- INSERT 1
INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Programado');

-- INSERT 2
INSERT INTO estado_vuelo (nombre_estado)
VALUES ('En Progreso');

-- INSERT 3
INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Completado');

-- INSERT 4
INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Cancelado');

-- INSERT 5
INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Desviado');


--- TIPO VUELO

-- INSERT 1
INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Nacional');

-- INSERT 2
INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Internacional');

-- INSERT 3
INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo de Carga');

-- INSERT 4
INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo de Pasajeros');

-- INSERT 5
INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Charter');

--- VUELO

-- INSERT 1
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (101, 1, 1, 1, 1, 2, '2023-10-10 08:00:00', '2023-10-10 10:30:00', 150, 1, 1);

-- INSERT 2
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (102, 2, 2, 2, 2, 3, '2023-10-11 10:30:00', '2023-10-11 12:45:00', 135, 2, 2);

-- INSERT 3
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (103, 3, 3, 3, 3, 4, '2023-10-12 14:00:00', '2023-10-12 16:30:00', 150, 1, 1);

-- INSERT 4
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (104, 4, 4, 4, 4, 5, '2023-10-13 16:45:00', '2023-10-13 19:15:00', 150, 3, 3);

-- INSERT 5
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (105, 5, 5, 5, 5, 6, '2023-10-14 20:00:00', '2023-10-14 22:30:00', 150, 4, 4);

-- INSERT 6
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (106, 6, 6, 6, 6, 7, '2023-10-15 08:30:00', '2023-10-15 10:45:00', 135, 2, 2);

-- INSERT 7
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (107, 7, 7, 7, 7, 8, '2023-10-16 12:15:00', '2023-10-16 14:45:00', 150, 1, 1);

-- INSERT 8
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (108, 8, 8, 8, 8, 9, '2023-10-17 16:30:00', '2023-10-17 18:45:00', 135, 2, 2);

-- INSERT 9
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (109, 9, 9, 9, 9, 10, '2023-10-18 20:00:00', '2023-10-18 22:30:00', 150, 4, 4);

-- INSERT 10
INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (110, 10, 10, 10, 10, 1, '2023-10-19 10:00:00', '2023-10-19 12:15:00', 135, 3, 3);


