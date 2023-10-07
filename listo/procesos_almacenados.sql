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