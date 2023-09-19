use master;
drop database if exists aerolinea;
create database aerolinea;
use aerolinea;
go

<<<<<<< HEAD

CREATE TABLE pasajero (
  id_pasajero INT IDENTITY(1, 1) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  telefono INT NOT NULL,
  historial_viajes VARCHAR(50) NOT NULL
);

CREATE TABLE reserva (
  id_reserva INT IDENTITY(1, 1) PRIMARY KEY,
  id_pasajero VARCHAR(50) NOT NULL,
  id_vuelo VARCHAR(50) NOT NULL,
  fecha_reserva INT NOT NULL,
  estado_reserva VARCHAR(50) NOT NULL
);

CREATE TABLE vuelo (
  id_vuelo INT IDENTITY(1, 1) PRIMARY KEY,
  no_vuelo VARCHAR(50) NOT NULL,
  id_avion VARCHAR(50) NOT NULL,
  fecha_hora_salida INT NOT NULL,
  fecha_hora_llegada VARCHAR(50) NOT NULL,
  duracion_vuelo INT NOT NULL,
  estado_vuelo VARCHAR(20)
);


CREATE TABLE avion (
  id_avion INT IDENTITY(1, 1) PRIMARY KEY,
  modelo VARCHAR(50) NOT NULL,
  k_asientos INT NOT NULL,
  fabrication_year INT NOT NULL,
  numero_serie INT NOT NULL
);

=======
CREATE TABLE cliente (
	id_cliente INT IDENTITY(1, 1) PRIMARY KEY,
	cedula INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	fecha_nacimiento date NOT NULL,
	telefono INT NOT NULL,
	email VARCHAR(20) NOT NULL
);

CREATE TABLE equipaje (
	id_equipaje INT PRIMARY KEY,
	id_cliente INT,
	peso INT NOT NULL,
	-- no_boleto

	
);


CREATE TABLE reserva (
	id_reserva INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	id_cliente INT, 
	fecha_reserva INT NOT NULL,	
	

	 
);

CREATE TABLE boleto (
	id_boleto INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	id_reserva int,
	precio money NOT NULL,
	fecha_emision Date
);

-----------------

-- relacionadas con el empleados
/*no requiere piloto de momento por que tiene los mimso datos que empleado y cliente si tiene los datos diferetes*/

CREATE TABLE tipo_empleado( -- Tipo empleado representa el cargo, pero la llame desde la tabla tripulacion
	id_tipo_empleado INT IDENTITY(1, 1) PRIMARY KEY,
	tipo_empleado VARCHAR(30)
);

CREATE TABLE empleado(
	id_empleado INT IDENTITY(1, 1) PRIMARY KEY,
	cedula INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	fecha_contratacion date NOT NULL,
	salario MONEY NOT NULL,
	telefono INT NOT NULL
);

CREATE TABLE tripulacion (
    id_tripulacion INT PRIMARY KEY,
    id_empleado INT,
    id_tipo_empleado INT,

	
);

-- relacionado al avion

CREATE TABLE estado_avion (
	id_estado_avion INT PRIMARY KEY,
	nombre_estado VARCHAR(20) NOT NULL
)

CREATE TABLE avion(
	id_avion INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	no_serie VARCHAR(50) NOT NULL,
	modelo VARCHAR(20) NOT NULL,
	cantidad_asientos INT NOT NULL,
	fabrication_year date NOT NULL,
	id_estado_avion INT NOT NULL

);


-- relacionadas con los destinos

CREATE TABLE direccion(
	 id_direccion INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	 calle VARCHAR(20),
	 ciudad VARCHAR(20),
	 codigo_postal VARCHAR(20)
);

CREATE TABLE pais(
	id_pais INT NOT NULL IDENTITY(1, 1) PRIMARY KEY, 
	nombre_pais VARCHAR(20) NOT NULL,
	codigo_pais VARCHAR(20) NOT NULL,
	id_direccion INT,
);

CREATE TABLE destino (
	id_destino INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	codigo_IATA CHAR(3) NOT NULL,
	id_pais INT,
);

/*Esta es la tabla que contiene la regla del negocio y la relacion de muchas tablas*/
CREATE TABLE estado_vuelo (
	id_estado_vuelo INT PRIMARY KEY,
	nombre_estado VARCHAR(20) NOT NULL,
);

CREATE TABLE tipo_vuelo (
	id_tipo_vuelo INT PRIMARY KEY,
	nombre_vuelo VARCHAR(20)
);

CREATE TABLE vuelo(
	id_vuelo INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	no_vuelo INT NOT NULL,
	id_tripulacion INT,
	id_reserva INT,
	id_avion INT,
	id_destino_origen INT,
	id_destino_llegada INT,
	fecha_hora_salida DATETIME,
	fecha_hora_llegada DATETIME,
	duracion_vuelo INT NOT NULL,
	id_estado_vuelo INT,
	id_tipo_vuelo INT
);		

--tiene la relacion de equipaje con cliente{
alter table equipaje add FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);
--}

--reserva a cliente
alter table reserva add FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
--}

--tripulacion con tipo_empleado y empleado{
alter table tripulacion add FOREIGN KEY (id_tipo_empleado) REFERENCES tipo_empleado(id_tipo_empleado);
alter table tripulacion add FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);
--}

--{ destíno pais
alter table destino add FOREIGN KEY (id_pais) REFERENCES pais(id_pais);
--}

--{pais dirrecion
alter table pais add FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion);
--}

--{avion
alter table avion add FOREIGN KEY (id_estado_avion) REFERENCES estado_avion(id_estado_avion);
--}

--{boleto
alter table boleto add FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva);
--}

--vuelo con las otras tablas{
alter table vuelo add FOREIGN KEY (id_tripulacion) REFERENCES tripulacion(id_tripulacion);
alter table vuelo add FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva);
alter table vuelo add FOREIGN KEY (id_avion) REFERENCES avion(id_avion);
alter table vuelo add FOREIGN KEY (id_destino_origen) REFERENCES destino(id_destino);
alter table vuelo add FOREIGN KEY (id_destino_llegada) REFERENCES destino(id_destino);
alter table vuelo add FOREIGN KEY (id_estado_vuelo) REFERENCES estado_vuelo(id_estado_vuelo);
alter table vuelo add FOREIGN KEY (id_tipo_vuelo) REFERENCES tipo_vuelo(id_tipo_vuelo);
--}
>>>>>>> refs/remotes/origin/main
