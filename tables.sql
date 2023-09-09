USE aerolinea;
GO

CREATE TABLE cliente (
	id_cliente INT IDENTITY(1, 1) PRIMARY KEY,
	cedula INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	fecha_nacimiento date NOT NULL,
	telefono INT NOT NULL,
	email VARCHAR(20) NOT NULL
);

CREATE TABLE reserva_boleto (
	id_reserva_boleto INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	numero_boleto INT NOT NULL, 
	fecha_reserva INT NOT NULL,	
	id_vuelo INT NOT NULL,
);

CREATE TABLE boleto (
	id_boleto INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	id_reserva VARCHAR(20),
	precio money NOT NULL,
	fecha_emision Date
);

CREATE TABLE equipaje (
	id_equipaje INT PRIMARY KEY,
	id_cliente INT,
	no_vuelo INT
	peso INT
	no_boleto

)


CREATE TABLE estado_vuelo (
	id_estado_vuelo INT PRIMARY KEY,
	nombre_estado VARCHAR(20) NOT NULL,
);

CREATE TABLE tipo_vuelo (
	id_tipo_vuelo INT PRIMARY KEY,
	nombre_vuelo VARCHAR(20),
)

/*Esta es la tabla que contiene la regla del negocio y la relacion de muchas tablas*/
CREATE TABLE vuelo(
	id_vuelo INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	numero_vuelo INT NOT NULL,
	id_avion INT,
	id_destino_origen INT,
	id_destino_llegada INT,
	fecha_hora_salida DATETIME,
	fecha_hora_llegada DATETIME,
	duracion_vuelo INT,
	id_estado_vuelo INT,
	id_tipo_vuelo INT,

	CONSTRAINT FOREIGN KEY (id_estado_vuelo) REFERENCES estado_vuelo(id_estado_vuelo),
	CONSTRAINT FOREIGN KEY (id_tipo_vuelo) REFERENCES tipo_vuelo(id_tipo_vuelo),
	CONSTRAINT FOREIGN KEY (id_avion) REFERENCES avion(id_avion)
);		
