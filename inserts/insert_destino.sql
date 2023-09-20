USE aerolinea

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