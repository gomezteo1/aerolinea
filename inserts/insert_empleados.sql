USE aerolinea

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