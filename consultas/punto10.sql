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

