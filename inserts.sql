USE aerolinea
-- INSERTS cliente
INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "perarlta",
    "rogemiro",
    "1990-10-10",
    3230004231,
    "codigofacilito@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "Mortin",
    "Arias",
    "1990-10-10",
    3320004231,
    "cursera@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "argiro",
    "youhero",
    "1990-10-10",
    3440004231,
    "tumama@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "Marlos",
    "Arias",
    "1990-10-10",
    3440004231,
    "jijijij@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "miami",
    "peru",
    "1990-10-10",
    3000004231,
    "jejejeje@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "alexander",
    "tilin",
    "1990-10-10",
    3210004231,
    "aelmocho!@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "chunga",
    "Maguaire",
    "1990-10-10",
    3480004231,
    "ramiro!@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "santi",
    "benDiez",
    "1990-10-10",
    3006604231,
    "bipi@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "lucho",
    "tenison",
    "1990-10-10",
    3007604231,
    "ajakati@gg.com"
  );

INSERT INTO
  cliente (
    cedula,
    nombre,
    apellido,
    fecha_nacimiento,
    telefono,
    email
  )
VALUES
  (
    1239041210,
    "andrea",
    "xlrOcho",
    "1990-10-10",
    396004231,
    "xocas@gg.com"
  );

-- INSERTS equipaje
INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (1, 23);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (2, 15);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (3, 30);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (4, 18);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (5, 22);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (6, 28);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (7, 12);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (8, 17);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (9, 25);

INSERT INTO
  equipaje (id_cliente, peso)
VALUES
  (10, 20);

-- INSERTS reserva
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

-- INSERTS boleto
INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (1, 150.50, '2023-09-01');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (2, 200.75, '2023-09-02');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (3, 180.00, '2023-09-03');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (4, 220.25, '2023-09-04');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (5, 175.90, '2023-09-05');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (6, 190.30, '2023-09-06');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (7, 205.40, '2023-09-07');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (8, 215.60, '2023-09-08');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (9, 185.75, '2023-09-09');

INSERT INTO
  boleto (id_reserva, precio, fecha_emision)
VALUES
  (10, 240.20, '2023-09-10');

-- INSERTS tipo_empleado
INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Piloto');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Azafata');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Mecánico');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Técnico de Mantenimiento');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Controlador de Tráfico Aéreo');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Agente de Reservas');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Gerente de Operaciones');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Gerente de Ventas');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Asistente de Vuelo');

INSERT INTO
  tipo_empleado (tipo_empleado)
VALUES
  ('Técnico de Aviónica');

-- INSERTS empleado
INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    1231234210,
    "Gustavo",
    "Rodriguez",
    "1987-08-11",
    45.0,
    300604231
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    1231230640,
    "Maria",
    "Lopez",
    "1977-06-08",
    66.0,
    305864231
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    1231234210,
    'Gustavo',
    'Rodriguez',
    '1967-12-12',
    45.0,
    300604231
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    987654321,
    'Ana',
    'López',
    '2000-05-20',
    55.5,
    555555555
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    456789012,
    'Pedro',
    'González',
    '2015-11-30',
    60.2,
    123456789
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    789012345,
    'María',
    'Martínez',
    '2018-03-15',
    50.8,
    987654321
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    543210987,
    'Luis',
    'Hernández',
    '2021-09-01',
    48.7,
    777777777
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    1357924680,
    'Laura',
    'Pérez',
    '2019-07-10',
    42.3,
    555121212
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    2468135790,
    'Carlos',
    'Ramírez',
    '2020-02-25',
    48.6,
    666232323
  );

INSERT INTO
  empleado (
    cedula,
    nombre,
    apellido,
    fecha_contratacion,
    salario,
    telefono
  )
VALUES
  (
    9876543210,
    'Sofía',
    'Gómez',
    '2017-11-18',
    56.9,
    777343434
  );

-- INSERTS tripulacion
INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (1, 1, 1);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (2, 2, 2);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (3, 3, 2);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (4, 4, 3);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (5, 5, 3);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (6, 6, 4);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (7, 7, 4);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (8, 8, 5);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (9, 9, 6);

INSERT INTO
  tripulacion (id_tripulacion, id_empleado, id_tipo_empleado)
VALUES
  (10, 10, 7);

-- INSERTS estado_avion
INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Servicio');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Mantenimiento');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Reparación');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Inspección');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('Fuera de Servicio');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Almacenamiento');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Desguace');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Pruebas');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Espera');

INSERT INTO
  estado_avion (nombre_estado)
VALUES
  ('En Producción');

-- INSERTS avion
INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('ABC123', 'Boeing 737', 150, '2015-05-10', 1);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('XYZ456', 'Airbus A320', 180, '2018-12-20', 1);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('DEF789', 'Boeing 747', 400, '2014-02-05', 2);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('GHI101', 'Airbus A380', 550, '2019-08-15', 2);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('JKL202', 'Boeing 787', 250, '2017-06-30', 1);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('MNO303', 'Airbus A330', 220, '2016-04-12', 2);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('PQR404', 'Boeing 777', 300, '2020-11-25', 1);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('STU505', 'Airbus A350', 280, '2018-03-05', 2);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('VWX606', 'Boeing 767', 200, '2015-09-18', 1);

INSERT INTO
  avion (
    no_serie,
    modelo,
    cantidad_asientos,
    fabrication_year,
    id_estado_avion
  )
VALUES
  ('YZA707', 'Airbus A330', 220, '2016-07-03', 1);

-- INSERTS direccion
INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Calle 1', 'Ciudad A', '12345');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Avenida 2', 'Ciudad B', '67890');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Calle Principal', 'Ciudad C', '54321');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Avenida Central', 'Ciudad D', '98765');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Calle Norte', 'Ciudad E', '24680');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Avenida Sur', 'Ciudad F', '13579');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Calle 3', 'Ciudad G', '86420');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Avenida 4', 'Ciudad H', '97531');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Calle Este', 'Ciudad I', '36985');

INSERT INTO
  direccion (calle, ciudad, codigo_postal)
VALUES
  ('Avenida Oeste', 'Ciudad J', '75246');

-- INSERTS pais
INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('México', 'MX', 1);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Estados Unidos', 'US', 2);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Canadá', 'CA', 3);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('España', 'ES', 4);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Francia', 'FR', 5);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Alemania', 'DE', 6);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Argentina', 'AR', 7);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Brasil', 'BR', 8);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Italia', 'IT', 9);

INSERT INTO
  pais (nombre_pais, codigo_pais, id_direccion)
VALUES
  ('Australia', 'AU', 10);

-- INSERTS destino
INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Ciudad de México', 'MEX', 1);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Nueva York', 'NYC', 2);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Toronto', 'YYZ', 3);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Madrid', 'MAD', 4);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('París', 'CDG', 5);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Berlín', 'TXL', 6);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Buenos Aires', 'EZE', 7);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Río de Janeiro', 'GIG', 8);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Roma', 'FCO', 9);

INSERT INTO
  destino (nombre, codigo_IATA, id_pais)
VALUES
  ('Sídney', 'SYD', 10);

-- INSERTS estado_vuelo
INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (1, 'Programado');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (2, 'En Curso');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (3, 'Retrasado');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (4, 'Cancelado');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (5, 'Completado');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (6, 'Desviado');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (7, 'En Espera');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (8, 'En Mantenimiento');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (9, 'En Reparación');

INSERT INTO
  estado_vuelo (id_estado_vuelo, nombre_estado)
VALUES
  (10, 'Despegado');

-- INSERTS tipo_vuelo
INSERT INTO
  tipo_vuelo (id_tipo_vuelo, nombre_vuelo)
VALUES
  (1, 'Vuelo Doméstico');

INSERT INTO
  tipo_vuelo (id_tipo_vuelo, nombre_vuelo)
VALUES
  (2, 'Vuelo Internacional');

INSERT INTO
  tipo_vuelo (id_tipo_vuelo, nombre_vuelo)
VALUES
  (3, 'Vuelo de Carga');

INSERT INTO
  tipo_vuelo (id_tipo_vuelo, nombre_vuelo)
VALUES
  (4, 'Vuelo Charter');

INSERT INTO
  tipo_vuelo (id_tipo_vuelo, nombre_vuelo)
VALUES
  (5, 'Vuelo de Conexión');

-- INSERTS vuelo
INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    101,
    1,
    1,
    1,
    1,
    2,
    '2023-09-15 08:00:00',
    '2023-09-15 10:30:00',
    150,
    1,
    1
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    102,
    2,
    2,
    2,
    3,
    4,
    '2023-09-16 10:30:00',
    '2023-09-16 13:00:00',
    150,
    2,
    2
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    103,
    3,
    3,
    3,
    5,
    6,
    '2023-09-17 14:00:00',
    '2023-09-17 16:30:00',
    150,
    3,
    3
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    104,
    4,
    4,
    4,
    7,
    8,
    '2023-09-18 16:00:00',
    '2023-09-18 18:30:00',
    150,
    4,
    4
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    105,
    5,
    5,
    5,
    9,
    10,
    '2023-09-19 18:30:00',
    '2023-09-19 21:00:00',
    150,
    5,
    5
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    106,
    6,
    6,
    6,
    1,
    2,
    '2023-09-20 08:00:00',
    '2023-09-20 10:30:00',
    150,
    6,
    6
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    107,
    7,
    7,
    7,
    3,
    4,
    '2023-09-21 10:30:00',
    '2023-09-21 13:00:00',
    150,
    7,
    7
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    108,
    8,
    8,
    8,
    5,
    6,
    '2023-09-22 14:00:00',
    '2023-09-22 16:30:00',
    150,
    8,
    8
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    109,
    9,
    9,
    9,
    7,
    8,
    '2023-09-23 16:00:00',
    '2023-09-23 18:30:00',
    150,
    9,
    9
  );

INSERT INTO
  vuelo (
    no_vuelo,
    id_tripulacion,
    id_reserva,
    id_avion,
    id_destino_origen,
    id_destino_llegada,
    fecha_hora_salida,
    fecha_hora_llegada,
    duracion_vuelo,
    id_estado_vuelo,
    id_tipo_vuelo
  )
VALUES
  (
    110,
    10,
    10,
    10,
    9,
    10,
    '2023-09-24 18:30:00',
    '2023-09-24 21:00:00',
    150,
    10,
    10
  );