USE aerolinea;
GO


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

