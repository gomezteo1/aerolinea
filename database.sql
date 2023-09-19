-- tira la tabla si existe

go 
DROP DATABASE IF EXISTS aerolinea;
GO

CREATE DATABASE aerolinea
ON PRIMARY
(
    NAME = 'aerolinea',
    FILENAME = 'C:\mibase\data\aerolinea.mdf', -- Ruta del archivo de datos
    SIZE = 50MB, -- Tamaño inicial del archivo de datos
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
)
LOG ON
(
    NAME = 'aerolinea_log',
    FILENAME = 'C:\mibase\data\aerolinea.ldf', -- Ruta del archivo de registro de transacciones
    SIZE = 50MB, -- Tamaño inicial del archivo de registro de transacciones
    FILEGROWTH = 25% -- Incremento de tamaño en porcentaje
);

GO


ALTER DATABASE aerolinea
SET COMPATIBILITY_LEVEL = 110;  
GO
