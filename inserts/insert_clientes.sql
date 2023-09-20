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