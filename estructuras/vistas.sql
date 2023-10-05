CREATE VIEW VistaClientesConReservas AS
SELECT c.id_cliente, c.nombre, c.apellido, r.id_reserva, r.fecha_reserva
FROM cliente c
LEFT JOIN reserva r ON c.id_cliente = r.id_cliente;

CREATE VIEW VistaEmpleadosConTipo AS
SELECT e.id_empleado, e.nombre, e.apellido, t.tipo_empleado
FROM empleado e
LEFT JOIN tipo_empleado t ON e.id_empleado = t.id_tipo_empleado;

CREATE VIEW VistaVuelosConDestinos AS
SELECT v.id_vuelo, v.no_vuelo, d_origen.nombre AS destino_origen, d_llegada.nombre AS destino_llegada
FROM vuelo v
INNER JOIN destino d_origen ON v.id_destino_origen = d_origen.id_destino
INNER JOIN destino d_llegada ON v.id_destino_llegada = d_llegada.id_destino;

CREATE VIEW VistaAvionesConEstado AS
SELECT a.id_avion, a.no_serie, a.modelo, e.nombre_estado AS estado_avion
FROM avion a
INNER JOIN estado_avion e ON a.id_estado_avion = e.id_estado_avion;

CREATE VIEW VistaDestinosConPais AS
SELECT d.id_destino, d.nombre, d.codigo_IATA, p.nombre_pais AS nombre_pais_destino
FROM destino d
INNER JOIN pais p ON d.id_pais = p.id_pais;

CREATE VIEW VistaReservasConBoletos AS
SELECT r.id_reserva, c.nombre AS nombre_cliente, c.apellido AS apellido_cliente, b.id_boleto, b.precio
FROM reserva r
INNER JOIN cliente c ON r.id_cliente = c.id_cliente
INNER JOIN boleto b ON r.id_reserva = b.id_reserva;
