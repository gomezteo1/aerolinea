USE aerolinea

CREATE TRIGGER ActualizarEstadoVuelo
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
  UPDATE cliente
  SET cliente.peso_equipaje = (SELECT SUM(peso) FROM equipaje WHERE id_cliente = cliente.id_cliente)
  FROM INSERTED i
  WHERE cliente.id_cliente = i.id_cliente;
END;

GO

CREATE TRIGGER tr_calcula_duracion_vuelo
ON vuelo
AFTER UPDATE
AS
BEGIN
  UPDATE vuelo
  SET duracion_vuelo = DATEDIFF(MINUTE, fecha_hora_salida, fecha_hora_llegada)
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

