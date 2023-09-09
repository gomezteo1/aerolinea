
-- relacionadas con el empleados

/*no requiere piloto de momento por que tiene los mimso datos que empleado y cliente si tiene los datos diferetes*/

CREATE TABLE tripulacion (
    id_tripulacion INT PRIMARY KEY,
    id_empleado INT,
    id_tipo_empleado INT,

    CONSTRAINT FOREIGN KEY (id_tipo_empleado) REFERENCES tipo_empleado(id_tipo_empleado)
)

CREATE TABLE tipo_empleado(
	id_tipo_empleado INT IDENTITY(1, 1) PRIMARY KEY,
	tipo_empleado VARCHAR(30)
);

CREATE TABLE empleado(
	id_empleado INT IDENTITY(1, 1) PRIMARY KEY,
	cedula INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cargo VARCHAR(20) NOT NULL,
	fecha_contratacion date NOT NULL,
	salario MONEY,
	telefono INT,
);

-- relacionado al avion

CREATE TABLE estado_avion (
	id_estado INT PRIMARY KEY,
	nombre_estado VARCHAR(20) NOT NULL
)

CREATE TABLE avion(
	id_avion INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	no_serie VARCHAR(50) NOT NULL,
	modelo VARCHAR(20) NOT NULL,
	cantidad_asientos INT,
	fabrication_year date
	id_estado INT,

	CONSTRAINT FOREIGN KEY (id_estado) REFERENCES estado_avion(id_estado)
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
	nombre_pais VARCHAR(20),
	codigo_pais VARCHAR(20),
	id_direccion INT,

	CONSTRAINT FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)

);

CREATE TABLE destino (
	id_destino INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	codigo_IATA CHAR(3) NOT NULL,
	id_pais INT,

	CONSTRAINT FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
)