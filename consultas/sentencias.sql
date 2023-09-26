-- UPDATES

-- Actualizar el salario del empleado con ID 5
UPDATE empleado
SET salario = 55000  -- El nuevo salario que deseas asignar
WHERE id_empleado = 5; -- ID del empleado que deseas actualizar


-- Cambiar el estado del vuelo con ID 3
UPDATE vuelo
SET id_estado_vuelo = 4  -- El nuevo ID del estado de vuelo que deseas asignar (por ejemplo, 4 para "Cancelado")
WHERE id_vuelo = 3; -- ID del vuelo que deseas actualizar



-- DELETES

-- Eliminar el cliente con ID 7
DELETE FROM cliente
WHERE id_cliente = 7; -- ID del cliente que deseas eliminar

-- Eliminar la reserva con ID 12
DELETE FROM reserva
WHERE id_reserva = 8; -- ID de la reserva que deseas eliminar


-- TRUNCATES

TRUNCATE TABLE equipaje;

TRUNCATE TABLE reserva;
