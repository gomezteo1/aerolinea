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
