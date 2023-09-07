USE aerolinea;
GO

/*CREATE TABLE name(
    id_name INT IDENTITY(1, 1) PRIMARY KEY
);*/

create table cliente(
	idCliente int,
	cedula int not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	fechaNacimiento date not null,
);

/*no requiere piloto de momento por que tiene los mimso datos que empleado y cliente si tiene los datos diferetes*/
Create Table empleado(
	idEmpleado int,
	cedula int not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	fechaContratacion date not null,
	tipoEmpleado_id int
);

create table tipoEmpleado(
	idTipoEmpleado int,
	tipoEmpleado varchar(30)
);

create table avion(
	idAvion int not null,
	modelo varchar(20) not null,
	capacidadAsientos int,
	añoFabricacion date
);

create table sede(
	idSede int not null,
	nombreSede varchar(30),
	dirreccion varchar(30)
);
create table pais(
	idPais int not null, 
	nombrePais varchar(20),
	codigoPais varchar(20)
);

create table fecha(
	 idFecha int not null,
	 fecha date
);

create table dirrecion(
	 idDireccion int not null,
	 calle varchar(20),
	 ciudad varchar(20),
	 codigoPostal varchar(20)
);


create table tarifa(
	idTarifa int not null,
	tipoTarifa varchar(20),
	precioBase int not null
);

create table reservaBoleto(
	idReservaBoleto int not null,
	numeroBoleto int not null, 
	idFecha int not null,	
	idVuelo int not null,
);
	




































/*Esta es la tabla que contiene la regla del negocio y la relacion de muchas tablas*/
create table vuelo(
	idVuelo int not null,
	numeroVuelo int not null,
	horaSalida time not null,
	horaLlegada time,
	idEmpleado int,
	idCliente int,
	idAvion int, 

);		

