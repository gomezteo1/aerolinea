
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
    fecha_reserva DATE NOT NULL,
    estado_reserva varchar(2)
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
/*no requiere piloto de momento por que tiene los mimso datos que empleado y cliente si tiene los datos diferetes*/
-- Tipo empleado representa el cargo, pero la llame desde la tabla tripulacion
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
    calle VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    codigo_postal VARCHAR(20) NOT NULL
  );

CREATE TABLE
  pais (
    id_pais INT IDENTITY (1, 1) PRIMARY KEY,
    nombre_pais VARCHAR(20) NOT NULL,
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