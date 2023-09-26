-- Creación de la base de datos
drop database AerolineaDB
use master;
CREATE DATABASE AerolineaDB;
USE AerolineaDB;

-- Creación de la tabla "pasajero"
CREATE TABLE pasajero (
    idPasajero INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    ciudad VARCHAR(50),
    telefono VARCHAR(15),
    codigoPostal VARCHAR(10),
    fechaNacimiento DATE,
   
);

-- Creación de la tabla "vuelo"
CREATE TABLE vuelo (
    idVuelo INT PRIMARY KEY,
	aerolinea varchar(10) not null,
    numeroVuelo VARCHAR(10) NOT NULL,
    origen VARCHAR(50) NOT NULL,
    destino VARCHAR(50) NOT NULL,
    fechaSalida DATE NOT NULL,
    horaSalida TIME NOT NULL,
    capacidadMaxima INT NOT NULL,
    precioVuelo DECIMAL(10, 2) NOT NULL,
    
);

-- Creación de la tabla "reserva"
CREATE TABLE reserva (
    idReserva INT PRIMARY KEY,
    fechaReserva DATE NOT NULL,
    estadoReserva VARCHAR(20) NOT NULL CHECK (estadoReserva IN ('confirmada', 'pendiente')),
    idVuelo INT,
    idPasajero INT,
    CONSTRAINT FK_idVuelo FOREIGN KEY (idVuelo) REFERENCES vuelo(idVuelo),
    CONSTRAINT FK_idPasajero FOREIGN KEY (idPasajero) REFERENCES pasajero(idPasajero),
);

ALTER TABLE pasajero
ADD CONSTRAINT CHK_FechaNacimiento
CHECK (DATEDIFF(YEAR, fechaNacimiento, GETDATE()) >= 18);



ALTER TABLE pasajero
ADD CONSTRAINT CHK_CodigoPostal
CHECK (ISNUMERIC(codigoPostal) = 1);


ALTER TABLE pasajero
ADD CONSTRAINT CHK_Ciudad
CHECK (ciudad NOT LIKE '%[^A-Za-z ]%');
-----
ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaReserva
CHECK (fechaReserva >= GETDATE());

ALTER TABLE reserva
ADD CONSTRAINT CHK_EstadoReserva
CHECK (estadoReserva IN ('confirmada', 'pendiente'));

ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaYEstadoReserva
CHECK (fechaReserva >= GETDATE() AND estadoReserva IN ('confirmada', 'pendiente'));

ALTER TABLE reserva
ADD CONSTRAINT CHK_FechaYEstadoReserva2
CHECK (estadoReserva IN ('confirmada', 'pendiente'));

--Vuelo
ALTER TABLE vuelo
ADD CONSTRAINT CHK_CapacidadMaxima
CHECK (CapacidadMaxima > 0);
ALTER TABLE vuelo
ADD CONSTRAINT CHK_PrecioVuelo
CHECK (precioVuelo >= 0);
ALTER TABLE vuelo
ADD CONSTRAINT CHK_FechaHoraSalida
CHECK (fechaSalida >= GETDATE());

-- Insertar pasajeros
INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (123, 'Francisco', 'Perez', '123', 'Medellin', '122', '2', '1998-03-12');

INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (2, 'Pedro', 'Perez', '456', 'Medellin', '122', '3', '1998-03-12');

INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (3, 'Dario', 'Cataño', '234', 'Medellin', '122', '4', '1998-03-12');

INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (4, 'Andrea', 'Ardila', '327', 'Medellin', '122', '5', '1998-03-12');

INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (5, 'Pablo', 'Castro', '523', 'Medellin', '122', '6', '1998-03-12');

INSERT INTO pasajero (idPasajero, nombre, apellido, direccion, ciudad, telefono, codigoPostal, FechaNacimiento)
VALUES (1, 'Carlos', 'Agudelo', '123', 'Medellin', '122', '2', '1998-03-12');

-- Insertar vuelo
INSERT INTO vuelo (idVuelo,aerolinea, numeroVuelo, origen, destino, fechaSalida, horaSalida, capacidadMaxima, precioVuelo)
VALUES (1, 'avianca','V101', 'Medellin', 'Bogota', '2023-09-15', '08:00:00', 150, 25000);

INSERT INTO vuelo (idVuelo, aerolinea,numeroVuelo, origen, destino, fechaSalida, horaSalida, capacidadMaxima, precioVuelo)
VALUES (2, 'avianca','V102', 'Medellin', 'Bogota', '2023-09-16', '09:30:00', 200, 18050);

INSERT INTO vuelo (idVuelo, aerolinea, numeroVuelo, origen, destino, fechaSalida, horaSalida, capacidadMaxima, precioVuelo)
VALUES (3,'avianca', 'V103', 'Medellin', 'Bogota', '2023-09-17', '11:15:00', 180, 32075);

INSERT INTO vuelo (idVuelo,aerolinea, numeroVuelo, origen, destino, fechaSalida, horaSalida, capacidadMaxima, precioVuelo)
VALUES (4,'avianca', 'V104', 'Medellin', 'Bogota', '2023-09-18', '13:45:00', 220, 17525);

INSERT INTO vuelo (idVuelo, aerolinea,numeroVuelo, origen, destino, fechaSalida, horaSalida, capacidadMaxima, precioVuelo)
VALUES (5, 'viva','V105', 'Bogota', 'Medellin', '2023-09-19', '16:00:00', 190, 29000);

--reserva
-- Asegurarse de que los valores de idReserva sean únicos
INSERT INTO reserva (idReserva, fechaReserva, estadoReserva, idVuelo, idPasajero)
VALUES (1, '2023-09-14', 'confirmada', 1, 1);

INSERT INTO reserva (idReserva, fechaReserva, estadoReserva, idVuelo, idPasajero)
VALUES (2, '2023-09-15', 'pendiente', 2, 2);

INSERT INTO reserva (idReserva, fechaReserva, estadoReserva, idVuelo, idPasajero)
VALUES (3, '2023-09-16', 'confirmada', 3, 3);

INSERT INTO reserva (idReserva, fechaReserva, estadoReserva, idVuelo, idPasajero)
VALUES (4, '2023-09-17', 'pendiente', 4, 4);

INSERT INTO reserva (idReserva, fechaReserva, estadoReserva, idVuelo, idPasajero)
VALUES (5, '2023-09-18', 'confirmada', 5, 5);

--indice
CREATE INDEX indicePasajeroNombre ON pasajero (nombre);

--Update
UPDATE pasajero
SET ciudad = 'jardin'
WHERE idPasajero = 123;

UPDATE vuelo
SET precioVuelo = 359000
WHERE precioVuelo = 29000;

--consultas
select origen,destino,precioVuelo from vuelo order by precioVuelo  DESC ;
select * from vuelo where origen like 'Medellin' and destino like 'Bogota';  
select * from vuelo where aerolinea like 'viva';
select * from pasajero where fechaNacimiento >'1990-01-01';
select * from vuelo where precioVuelo<349000;
select * from reserva where estadoReserva like 'confirmada';
