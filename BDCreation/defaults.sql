USE aerolinea

-- cliente hasta boleto

ALTER TABLE cliente
ADD CONSTRAINT DF_cliente_telefono DEFAULT 0 FOR telefono;

