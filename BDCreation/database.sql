-- tira la tabla si existe
USE master;
ALTER DATABASE aerolinea SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE IF EXISTS aerolinea;
GO

-- CREATE DATABASE aerolinea
-- ON PRIMARY
-- (
--     NAME = 'aerolinea',
--     FILENAME = 'C:\mibase\data\aerolinea.mdf', -- Ruta del archivo de datos
--     SIZE = 50MB, -- Tamaño inicial del archivo de datos
--     FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
-- )
-- LOG ON
-- (
--     NAME = 'aerolinea_log',
--     FILENAME = 'C:\mibase\data\aerolinea.ldf', -- Ruta del archivo de registro de transacciones
--     SIZE = 50MB, -- Tamaño inicial del archivo de registro de transacciones
--     FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
-- );

CREATE DATABASE aerolinea
ON PRIMARY
(
    NAME = 'aerolinea',
    FILENAME = '/var/opt/mssql/data/aerolinea.mdf', -- Ruta del archivo de datos en el contenedor
    SIZE = 50MB, -- Tamaño inicial del archivo de datos
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
)
LOG ON
(
    NAME = 'aerolinea_log',
    FILENAME = '/var/opt/mssql/data/aerolinea.ldf', -- Ruta del archivo de registro de transacciones en el contenedor
    SIZE = 50MB, -- Tamaño inicial del archivo de registro de transacciones
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
);
GO

-- Establece el nivel de compatibilidad de la base de datos
ALTER DATABASE aerolinea
SET COMPATIBILITY_LEVEL = 110;  
GO
