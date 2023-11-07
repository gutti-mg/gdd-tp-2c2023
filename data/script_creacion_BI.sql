USE [GD2C2023]
GO

-- DROP FK
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
GO

--DROP ESQUEMA
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO')
  DROP SCHEMA BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO
GO

-- CREO ESQUEMA
CREATE SCHEMA BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION(
	id NVARCHAR(100) PRIMARY KEY, 
);
GO
/*
CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO(
	id INT PRIMARY KEY,
	descripcion NVARCHAR(255)
);
GO
*/
CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES(
	id NVARCHAR(100) PRIMARY KEY 
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO(
	id INT IDENTITY(1,1) NOT NULL,
	anio INT,
    cuatrimestre INT
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO(
	tipo_operacion_id INT,
    --barrio_id INT,
    ambientes_id INT,
    tiempo_id INT
);
GO

--------DIM_TIEMPO----------
INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
VALUES (2021,01)

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
VALUES (2021,02)

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
VALUES (2022,01)

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
VALUES (2022,02)

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
VALUES (2023,01)

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (ANIO, cuatrimestre)
VALUES (2023,02)
