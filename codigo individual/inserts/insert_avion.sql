
USE aerolinea

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