-- tira la tabla si existe
USE master;
ALTER DATABASE aerolinea SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE IF EXISTS aerolinea;
GO

-- CREATE DATABASE aerolinea
-- ON PRIMARY
-- (
--     NAME = 'aerolinea',
--     FILENAME = 'C:\mibase\data\aerolinea.mdf', -- Ruta del archivo de datos
--     SIZE = 50MB, -- Tamaño inicial del archivo de datos
--     FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
-- )
-- LOG ON
-- (
--     NAME = 'aerolinea_log',
--     FILENAME = 'C:\mibase\data\aerolinea.ldf', -- Ruta del archivo de registro de transacciones
--     SIZE = 50MB, -- Tamaño inicial del archivo de registro de transacciones
--     FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
-- );

CREATE DATABASE aerolinea
ON PRIMARY
(
    NAME = 'aerolinea',
    FILENAME = '/var/opt/mssql/data/aerolinea.mdf', -- Ruta del archivo de datos en el contenedor
    SIZE = 50MB, -- Tamaño inicial del archivo de datos
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
)
LOG ON
(
    NAME = 'aerolinea_log',
    FILENAME = '/var/opt/mssql/data/aerolinea.ldf', -- Ruta del archivo de registro de transacciones en el contenedor
    SIZE = 50MB, -- Tamaño inicial del archivo de registro de transacciones
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
);
GO

-- Establece el nivel de compatibilidad de la base de datos
ALTER DATABASE aerolinea
SET COMPATIBILITY_LEVEL = 110;  
GO


use aerolinea;

go
CREATE TABLE
  cliente (
    id_cliente INT IDENTITY (1, 1) PRIMARY KEY,
    cedula BIGINT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento date NOT NULL,
    telefono BIGINT NOT NULL,
    email VARCHAR(20) NOT NULL
  );

CREATE TABLE
  equipaje (
    id_equipaje INT IDENTITY (1, 1) PRIMARY KEY,
    id_cliente INT,
    peso INT NOT NULL,
  );

CREATE TABLE
  reserva (
    id_reserva INT IDENTITY (1, 1) PRIMARY KEY,
    id_cliente INT,
    fecha_reserva DATE NOT NULL
  );

CREATE TABLE
  boleto (
    id_boleto INT IDENTITY (1, 1) PRIMARY KEY,
    id_reserva INT,
    precio MONEY NOT NULL,
    fecha_emision DATE NOT NULL
  );

-----------------
-- relacionadas con el empleados

CREATE TABLE
  tipo_empleado (
    id_tipo_empleado INT IDENTITY (1, 1) PRIMARY KEY,
    tipo_empleado VARCHAR(30) NOT NULL
  );

CREATE TABLE
  empleado (
    id_empleado INT IDENTITY (1, 1) PRIMARY KEY,
    cedula BIGINT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_contratacion date NOT NULL,
    salario MONEY NOT NULL,
    telefono BIGINT NOT NULL
  );

CREATE TABLE
  tripulacion (
    id_tripulacion INT IDENTITY (1, 1) PRIMARY KEY,
    id_empleado INT,
    id_tipo_empleado INT,
  );

-- relacionado al avion
CREATE TABLE
  estado_avion (
    id_estado_avion INT IDENTITY (1, 1) PRIMARY KEY,
    nombre_estado VARCHAR(20) NOT NULL
  );

CREATE TABLE
  avion (
    id_avion INT IDENTITY (1, 1) PRIMARY KEY,
    no_serie VARCHAR(50) NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    cantidad_asientos INT NOT NULL,
    fabrication_year DATE NOT NULL,
    id_estado_avion INT NOT NULL
  );

-- relacionadas con los destinos
CREATE TABLE
  direccion (
    id_direccion INT IDENTITY (1, 1) PRIMARY KEY,
    calle VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    codigo_postal VARCHAR(20) NOT NULL
  );

CREATE TABLE
  pais (
    id_pais INT IDENTITY (1, 1) PRIMARY KEY,
    nombre_pais VARCHAR(30) NOT NULL,
    codigo_pais VARCHAR(20) NOT NULL,
    id_direccion INT,
  );

CREATE TABLE
  destino (
    id_destino INT IDENTITY (1, 1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    codigo_IATA CHAR(3) NOT NULL,
    id_pais INT,
  );

/*Esta es la tabla que contiene la regla del negocio y la relacion de muchas tablas*/
CREATE TABLE
  estado_vuelo (
    id_estado_vuelo INT IDENTITY (1, 1) PRIMARY KEY,
    nombre_estado VARCHAR(20) NOT NULL,
  );

CREATE TABLE
  tipo_vuelo (
    id_tipo_vuelo INT IDENTITY (1, 1) PRIMARY KEY,
    nombre_vuelo VARCHAR(20) NOT NULL
  );

CREATE TABLE
  vuelo (
    id_vuelo INT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    no_vuelo INT NOT NULL,
    id_tripulacion INT,
    id_reserva INT,
    id_avion INT,
    id_destino_origen INT,
    id_destino_llegada INT,
    fecha_hora_salida DATETIME NOT NULL,
    fecha_hora_llegada DATETIME NOT NULL,
    duracion_vuelo INT NOT NULL,
    id_estado_vuelo INT,
    id_tipo_vuelo INT
  );

  GO
  USE aerolinea

-- FORANEAS

ALTER TABLE equipaje
ADD CONSTRAINT FK_equipaje_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

--------------reserva

ALTER TABLE reserva
ADD CONSTRAINT FK_reserva_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)

---------------boleto

ALTER TABLE boleto
ADD CONSTRAINT FK_boleto_reserva
FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)


----------------tripulacion

ALTER TABLE tripulacion
ADD CONSTRAINT FK_tripulacion_empleado
FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)

ALTER TABLE tripulacion
ADD CONSTRAINT FK_tripulacion_tipo_empleado
FOREIGN KEY (id_tipo_empleado) REFERENCES tipo_empleado(id_tipo_empleado)

-----------------avion

ALTER TABLE avion
ADD CONSTRAINT FK_avion_estado_avion
FOREIGN KEY (id_estado_avion) REFERENCES estado_avion(id_estado_avion)

-----------------pais

ALTER TABLE pais
ADD CONSTRAINT FK_pais_direccion
FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)

----------------destino

ALTER TABLE destino
ADD CONSTRAINT FK_destino_pais
FOREIGN KEY (id_pais) REFERENCES pais(id_pais)

----------------vuelo

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


GO
USE aerolinea;

--cliente 
ALTER TABLE cliente
ADD CONSTRAINT chk_cedula_cliente
CHECK (cedula > 1);

alter table cliente 
ADD CONSTRAINT chk_fechaNacimiento
Check (DATEDIFF(year,fecha_nacimiento,GETDATE()) >= 18);

alter table cliente
add constraint chk_telefono_cliente
check (telefono>3000000000);

ALTER TABLE cliente
ADD CONSTRAINT chk_nombre_cliente
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE cliente
ADD CONSTRAINT chk_apellido_cliente
CHECK (apellido NOT like '%[^A-Za-z ]%');

-----equipaje

alter table equipaje 
add constraint chk_peso
check (peso>=0)

-----reserva

ALTER TABLE reserva
ADD CONSTRAINT chk_fecha_reserva
CHECK (YEAR(fecha_reserva) >= YEAR(GETDATE()));

ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaReservaMinima
CHECK (fecha_reserva >= '2023-01-01');

----------- empleados

ALTER TABLE empleado
ADD CONSTRAINT chk_cedula_empleado
CHECK (cedula > 1);

ALTER TABLE empleado
ADD CONSTRAINT chk_nombre_empleado
CHECK (nombre NOT LIKE '%[^A-Za-z ]%');

ALTER TABLE empleado
ADD CONSTRAINT chk_apellido_empleado
CHECK (apellido NOT like '%[^A-Za-z ]%');

--------------avion

ALTER TABLE avion
ADD CONSTRAINT chk_capacidad_maxima
CHECK (cantidad_asientos > 0);

ALTER TABLE boleto
ADD CONSTRAINT chk_precio_vuelo
CHECK (precio >= 0);

ALTER TABLE vuelo
ADD CONSTRAINT chk_fecha_hora_salida
CHECK (fecha_hora_salida >= GETDATE());

GO
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

GO
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


GO

USE aerolinea
GO

CREATE PROCEDURE insertarCliente
    @Cedula BIGINT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @fecha_nacimiento DATE,
    @telefono BIGINT,
    @email VARCHAR(20)
AS
BEGIN
    INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email) 
    VALUES (@Cedula, @nombre, @apellido, @fecha_nacimiento, @telefono, @email)
END;

GO

CREATE PROCEDURE ActualizarEstadoVuelo
    @idVuelo INT,
    @idEstadoVuelo INT
AS
BEGIN
    UPDATE vuelo
    SET id_estado_vuelo = @idEstadoVuelo
    WHERE id_vuelo = @idVuelo
END;

GO


CREATE PROCEDURE ObtenerEquipajeCliente
    @idCliente INT
AS
BEGIN
    SELECT id_equipaje, peso 
    FROM equipaje
    WHERE id_cliente = @idCliente
END;

GO

CREATE PROCEDURE ObtenerVuelosPorDestino
    @IdDestino INT
AS
BEGIN
    SELECT id_vuelo, no_vuelo, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo
    FROM vuelo
    WHERE id_destino_llegada = @IdDestino
END;

GO


use aerolinea
GO

CREATE VIEW VistaClientesConReservas AS
SELECT c.id_cliente as codigoCliente, c.nombre, c.apellido, r.id_reserva as codigoreserva, r.fecha_reserva
FROM cliente c
LEFT JOIN reserva r ON c.id_cliente = r.id_cliente;
GO  

CREATE VIEW VistaEmpleadosConTipo AS
SELECT e.id_empleado, e.nombre, e.apellido, t.tipo_empleado
FROM empleado e
LEFT JOIN tipo_empleado t ON e.id_empleado = t.id_tipo_empleado;
GO

CREATE VIEW VistaVuelosConDestinos AS
SELECT v.id_vuelo, v.no_vuelo, d_origen.nombre AS destino_origen, d_llegada.nombre AS destino_llegada
FROM vuelo v
INNER JOIN destino d_origen ON v.id_destino_origen = d_origen.id_destino
INNER JOIN destino d_llegada ON v.id_destino_llegada = d_llegada.id_destino;
GO

CREATE VIEW VistaAvionesConEstado AS
SELECT a.id_avion, a.no_serie, a.modelo, e.nombre_estado AS estado_avion
FROM avion a
INNER JOIN estado_avion e ON a.id_estado_avion = e.id_estado_avion;
GO

CREATE VIEW VistaDestinosConPais AS
SELECT d.id_destino, d.nombre, d.codigo_IATA, p.nombre_pais AS nombre_pais_destino
FROM destino d
INNER JOIN pais p ON d.id_pais = p.id_pais;
GO

CREATE VIEW VistaReservasConBoletos AS
SELECT r.id_reserva, c.nombre AS nombre_cliente, c.apellido AS apellido_cliente, b.id_boleto, b.precio
FROM reserva r
INNER JOIN cliente c ON r.id_cliente = c.id_cliente
INNER JOIN boleto b ON r.id_reserva = b.id_reserva;
GO

USE aerolinea
GO

CREATE TRIGGER TActualizarEstadoVuelo
ON estado_vuelo
AFTER UPDATE
AS
BEGIN
    UPDATE vuelo
    SET id_estado_vuelo = inserted.id_estado_vuelo
    FROM vuelo
    INNER JOIN inserted ON vuelo.id_estado_vuelo = inserted.id_estado_vuelo
END;

GO

CREATE TRIGGER tr_actualizar_peso_equipaje
ON equipaje
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
  UPDATE equipaje
  SET equipaje.peso = (SELECT SUM(peso) FROM equipaje WHERE id_cliente = equipaje.id_cliente)
  FROM INSERTED i
  WHERE equipaje.id_cliente = i.id_cliente;
END;

GO

CREATE TRIGGER tr_calcula_duracion_vuelo
ON vuelo
AFTER UPDATE
AS
BEGIN
  UPDATE vuelo
  SET duracion_vuelo = DATEDIFF(MINUTE, vuelo.fecha_hora_salida, vuelo.fecha_hora_llegada)
  FROM INSERTED i
  WHERE vuelo.id_vuelo = i.id_vuelo;
END;

GO

CREATE TRIGGER tr_asignar_estado_vuelo
ON vuelo
AFTER INSERT
AS
BEGIN
  INSERT INTO estado_vuelo (nombre_estado)
  SELECT 'Programado'
  FROM INSERTED i;
END;

GO


USE aerolinea

--- CLIENTES

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (1234567890, 'Juan', 'Perez', '1990-05-15', 3034567890, 'juan@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (9876543210, 'Maria', 'Gomez', '1985-08-20', 9876543210, 'maria@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (4567890123, 'Carlos', 'Rodriguez', '1998-03-10', 4567890123, 'carlos@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (7890123456, 'Laura', 'Lopez', '1995-12-05', 7890123456, 'laura@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (2345678901, 'Pedro', 'Mendoza', '1980-09-25', 3345678901, 'pedro@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (5678901234, 'Ana', 'Martinez', '1987-06-30', 5678901234, 'ana@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (8901234567, 'Luis', 'Sanchez', '1993-02-18', 8901234567, 'luis@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (3456789012, 'Sofia', 'Fernandez', '1997-11-12', 3456789012, 'sofia@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (6789012345, 'Diego', 'Gonzalez', '1983-07-08', 6789012345, 'diego@example.com');

INSERT INTO cliente (cedula, nombre, apellido, fecha_nacimiento, telefono, email)
VALUES (9012345678, 'Elena', 'Ramirez', '1989-04-03', 9012345678, 'elena@example.com');


--- EQUIPAJE

INSERT INTO equipaje (id_cliente, peso)
VALUES (1, 20);

INSERT INTO equipaje (id_cliente, peso)
VALUES (2, 15);

INSERT INTO equipaje (id_cliente, peso)
VALUES (3, 25);

INSERT INTO equipaje (id_cliente, peso)
VALUES (4, 18);

INSERT INTO equipaje (id_cliente, peso)
VALUES (5, 22);

INSERT INTO equipaje (id_cliente, peso)
VALUES (6, 19);

INSERT INTO equipaje (id_cliente, peso)
VALUES (7, 27);

INSERT INTO equipaje (id_cliente, peso)
VALUES (8, 14);

INSERT INTO equipaje (id_cliente, peso)
VALUES (9, 23);

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

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (1, 350.50, '2023-10-05');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (2, 420.75, '2023-10-06');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (3, 275.00, '2023-10-07');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (4, 310.25, '2023-10-08');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (5, 400.00, '2023-10-09');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (6, 295.75, '2023-10-10');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (7, 375.80, '2023-10-11');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (8, 280.90, '2023-10-12');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (9, 365.25, '2023-10-13');

INSERT INTO boleto (id_reserva, precio, fecha_emision)
VALUES (10, 320.40, '2023-10-14');


--- TIPO EMPLEADO

INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Piloto');

INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Azafata');

INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Técnico de Mantenimiento');

INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Supervisor de Vuelo');

INSERT INTO tipo_empleado (tipo_empleado)
VALUES ('Despachador de Vuelo');


--- EMPLEADO

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (1234567890, 'Ana', 'López', '2022-03-15', 35000.00, 9876543210);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (9876543210, 'Juan', 'Gómez', '2021-06-20', 42000.00, 1234567890);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (4567890123, 'Laura', 'Martínez', '2023-01-10', 30000.00, 5678901234);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (7890123456, 'Carlos', 'Rodríguez', '2023-02-28', 38000.00, 2345678901);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (2345678901, 'Sofía', 'Pérez', '2022-11-05', 32000.00, 9012345678);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (5678901234, 'Diego', 'Fernández', '2021-07-30', 41000.00, 3456789012);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (8901234567, 'Elena', 'Ramírez', '2022-08-18', 36000.00, 6789012345);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (3456789012, 'Pedro', 'Sánchez', '2021-12-12', 29000.00, 4567890123);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (6789012345, 'Luis', 'González', '2023-04-03', 40000.00, 8901234567);

INSERT INTO empleado (cedula, nombre, apellido, fecha_contratacion, salario, telefono)
VALUES (9012345678, 'María', 'López', '2022-05-25', 37000.00, 7890123456);


--- TRIPULACION

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (1, 1);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (2, 2);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (3, 3);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (4, 4);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (5, 5);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (6, 1);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (7, 2);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (8, 3);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (9, 4);

INSERT INTO tripulacion (id_empleado, id_tipo_empleado)
VALUES (10, 5);


--- ESTADO AVION

INSERT INTO estado_avion (nombre_estado)
VALUES ('Operativo');

INSERT INTO estado_avion (nombre_estado)
VALUES ('En Mantenimiento');

INSERT INTO estado_avion (nombre_estado)
VALUES ('En Reparación');

INSERT INTO estado_avion (nombre_estado)
VALUES ('En Inspección');

INSERT INTO estado_avion (nombre_estado)
VALUES ('Fuera de Servicio');


--- AVION

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('AB12345', 'Boeing 737', 180, '2020-01-15', 1);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('CD67890', 'Airbus A320', 150, '2019-05-20', 2);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('EF12345', 'Boeing 787', 250, '2022-03-10', 1);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('GH67890', 'Airbus A350', 220, '2021-08-05', 3);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('IJ12345', 'Boeing 777', 200, '2020-12-01', 1);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('KL67890', 'Airbus A330', 170, '2023-02-28', 2);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('MN12345', 'Boeing 747', 300, '2021-07-15', 1);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('OP67890', 'Airbus A380', 350, '2019-10-10', 4);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('QR12345', 'Boeing 737', 180, '2022-04-20', 1);

INSERT INTO avion (no_serie, modelo, cantidad_asientos, fabrication_year, id_estado_avion)
VALUES ('ST67890', 'Airbus A320', 150, '2020-06-25', 5);

--- DIRECCION

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de la Libertad 345', 'Ciudad F', '23456');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Playa 567', 'Ciudad G', '87654');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida del Sol 789', 'Ciudad H', '76543');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle del Río 901', 'Ciudad I', '34567');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de la Montaña 1234', 'Ciudad J', '12340');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle del Bosque 5678', 'Ciudad K', '56789');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida del Mar 4321', 'Ciudad L', '43210');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Luna 8765', 'Ciudad M', '87659');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Avenida de las Estrellas 2109', 'Ciudad N', '21098');

INSERT INTO direccion (calle, ciudad, codigo_postal)
VALUES ('Calle de la Montaña 5432', 'Ciudad O', '54321');

--- PAIS

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Estados Unidos', 'US', 1);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Canadá', 'CA', 2);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('México', 'MX', 3);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Reino Unido', 'UK', 4);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Francia', 'FR', 5);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Alemania', 'DE', 6);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('España', 'ES', 7);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Italia', 'IT', 8);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Australia', 'AU', 9);

INSERT INTO pais (nombre_pais, codigo_pais, id_direccion)
VALUES ('Brasil', 'BR', 10);

--- DESTINO

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Nueva York', 'NYC', 1);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Toronto', 'YYZ', 2);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Ciudad de México', 'MEX', 3);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Londres', 'LHR', 4);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('París', 'CDG', 5);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Berlín', 'TXL', 6);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Madrid', 'MAD', 7);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Roma', 'FCO', 8);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Sídney', 'SYD', 9);

INSERT INTO destino (nombre, codigo_IATA, id_pais)
VALUES ('Río de Janeiro', 'GIG', 10);


--- ESTADO VUELO

INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Programado');

INSERT INTO estado_vuelo (nombre_estado)
VALUES ('En Progreso');

INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Completado');

INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Cancelado');

INSERT INTO estado_vuelo (nombre_estado)
VALUES ('Desviado');


--- TIPO VUELO

INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Nacional');

INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Internacional');

INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo de Carga');

INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo de Pasajeros');

INSERT INTO tipo_vuelo (nombre_vuelo)
VALUES ('Vuelo Charter');

--- VUELO

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (101, 1, 1, 1, 1, 2, '2024-10-10 08:00:00', '2023-10-10 10:30:00', 150, 1, 1);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (102, 2, 2, 2, 2, 3, '2024-10-11 10:30:00', '2023-10-11 12:45:00', 135, 2, 2);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (103, 3, 3, 3, 3, 4, '2024-10-12 14:00:00', '2023-10-12 16:30:00', 150, 1, 1);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (104, 4, 4, 4, 4, 5, '2024-10-13 16:45:00', '2023-10-13 19:15:00', 150, 3, 3);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (105, 5, 5, 5, 5, 6, '2024-10-14 20:00:00', '2023-10-14 22:30:00', 150, 4, 4);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (106, 6, 6, 6, 6, 7, '2024-10-15 08:30:00', '2023-10-15 10:45:00', 135, 2, 2);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (107, 7, 7, 7, 7, 8, '2024-10-16 12:15:00', '2023-10-16 14:45:00', 150, 1, 1);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (108, 8, 8, 8, 8, 9, '2024-10-17 16:30:00', '2023-10-17 18:45:00', 135, 2, 2);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (109, 9, 9, 9, 9, 10, '2024-10-18 20:00:00', '2023-10-18 22:30:00', 150, 4, 4);

INSERT INTO vuelo (no_vuelo, id_tripulacion, id_reserva, id_avion, id_destino_origen, id_destino_llegada, fecha_hora_salida, fecha_hora_llegada, duracion_vuelo, id_estado_vuelo, id_tipo_vuelo)
VALUES (110, 10, 10, 10, 10, 1, '2024-10-19 10:00:00', '2023-10-19 12:15:00', 135, 3, 3);





