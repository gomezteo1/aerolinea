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



