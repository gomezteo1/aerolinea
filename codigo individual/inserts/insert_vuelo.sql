USE aerolinea

-- INSERTS estado_vuelo
INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Programado');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('En Curso');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Retrasado');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Cancelado');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Completado');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Desviado');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('En Espera');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('En Mantenimiento');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('En Reparación');

INSERT INTO
  estado_vuelo (nombre_estado)
VALUES
  ('Despegado');

-- INSERTS tipo_vuelo
INSERT INTO
  tipo_vuelo (nombre_vuelo)
VALUES
  ('Vuelo Doméstico');

INSERT INTO
  tipo_vuelo (nombre_vuelo)
VALUES
  ('Vuelo Internacional');

INSERT INTO
  tipo_vuelo (nombre_vuelo)
VALUES
  ('Vuelo de Carga');

INSERT INTO
  tipo_vuelo (nombre_vuelo)
VALUES
  ('Vuelo Charter');

INSERT INTO
  tipo_vuelo (nombre_vuelo)
VALUES
  ('Vuelo de Conexión');

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