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