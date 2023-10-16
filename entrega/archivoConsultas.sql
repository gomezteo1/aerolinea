


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

USE aerolinea

-- SELECT - DISTINCT

SELECT DISTINCT nombre
FROM cliente;

SELECT DISTINCT email
FROM cliente;

-- ORDER BY - ASC -DESC 

SELECT nombre
FROM cliente
ORDER BY nombre ASC;

SELECT apellido
FROM cliente
ORDER BY apellido DESC;

-- BETWEEN - AND

SELECT nombre
FROM cliente
WHERE fecha_nacimiento BETWEEN '1990-01-01' AND '2000-12-31';

SELECT c.nombre
FROM cliente c
INNER JOIN equipaje e ON c.id_cliente = e.id_cliente
WHERE e.peso BETWEEN 20 AND 30;

-- IN, NOT, LIKE

SELECT c.nombre
FROM cliente c
INNER JOIN reserva r ON c.id_cliente = r.id_cliente
INNER JOIN boleto b ON r.id_reserva = b.id_reserva
WHERE b.precio IN (350.50, 275.00, 400.00);

SELECT c.nombre
FROM cliente c
INNER JOIN reserva r ON c.id_cliente = r.id_cliente
INNER JOIN vuelo v ON r.id_reserva = v.id_reserva
INNER JOIN destino d ON v.id_destino_llegada = d.id_destino
WHERE d.nombre LIKE '%Toronto%';


-- GROUP BY - ORDER BY

SELECT *
FROM vuelo
WHERE duracion_vuelo >= 135 AND (id_estado_vuelo = 1 OR id_estado_vuelo = 2);

SELECT d.nombre AS destino, COUNT(v.id_vuelo) AS cantidad_vuelos
FROM destino d
INNER JOIN vuelo v ON d.id_destino = v.id_destino_llegada
GROUP BY d.nombre
ORDER BY cantidad_vuelos DESC;


-- SQL JOINS

SELECT c.nombre, r.fecha_reserva
FROM cliente c
FULL OUTER JOIN reserva r ON c.id_cliente = r.id_cliente;

SELECT d.nombre, COUNT(v.id_vuelo) AS cantidad_vuelos
FROM destino d
INNER JOIN vuelo v ON d.id_destino = v.id_destino_llegada
GROUP BY d.nombre;

SELECT c.nombre, b.id_boleto
FROM cliente c
LEFT JOIN reserva r ON c.id_cliente = r.id_cliente
LEFT JOIN boleto b ON r.id_reserva = b.id_reserva;


USE aerolinea;

-- funciones agregadas

SELECT COUNT(*) AS TotalEmpleados
FROM empleado;

SELECT COUNT(*) AS totalVuelos
FROM vuelo;

SELECT MIN(salario) AS SalarioMinimo
FROM empleado;

SELECT MAX(fecha_nacimiento) AS clienteMasJoven
FROM cliente;

SELECT AVG(salario) AS SalarioPromedio
FROM empleado;

-- lower - Upper

SELECT UPPER(nombre_pais) AS NombrePaisEnMayusculas
FROM pais;

SELECT LOWER(nombre) AS nombreDestinoMinusculas
FROM destino;

-- funciones de fecha

SELECT DAY(fecha_nacimiento) AS DiaDeNacimiento
FROM cliente;

SELECT MONTH(fecha_emision) AS MesDeEmision
FROM boleto;


-- funciones de conversion

SELECT CAST(salario AS DECIMAL(10, 2)) AS SalarioDecimal
FROM empleado;

SELECT CONVERT(VARCHAR, fecha_nacimiento, 120) AS FechaNacimientoFormatoVarchar
FROM cliente;

SELECT PARSE('2023-10-06' AS DATE) AS FechaParseada;



-- funciones logicas

SELECT CHOOSE(2, 'París', 'Londres', 'Nueva York') AS DestinoElegido;

SELECT id_vuelo, IIF(id_estado_vuelo = 1, 'A tiempo', 'Retrasado') AS EstadoVuelo
FROM vuelo;


-- funciones null

SELECT *
FROM cliente
WHERE nombre IS NOT NULL AND nombre <> 'Desconocido';


SELECT COALESCE(email, CONVERT(VARCHAR, telefono)) AS ContactoCliente
FROM cliente;

