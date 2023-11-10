USE [GD2C2023]
GO


-- Inicio DROP FKs
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_TIPO_OPERACION_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_TIPO_OPERACION_ID
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_BARRIO_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_BARRIO_ID
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_AMBIENTES_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_AMBIENTES_ID
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_TIEMPO_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_TIEMPO_ID
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_FECHA_ALTA_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_FECHA_ALTA_ID
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FK_HECHO_ANUNCIO_FECHA_BAJA_ID', 'F') IS NOT NULL
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    DROP CONSTRAINT FK_HECHO_ANUNCIO_FECHA_BAJA_ID
GO

-- DROP TABLE
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO', 'U') IS NOT NULL
    DROP TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
GO

----DROP FUNCTIONS
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FX_OBTENER_CUATRIMESTRE') IS NOT NULL
	DROP FUNCTION BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FX_OBTENER_CUATRIMESTRE
GO

--DROP PROCEDURE
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIEMPO') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIEMPO
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_AMBIENTES') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_AMBIENTES
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_BARRIO') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_BARRIO
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_ALTA') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_ALTA
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_BAJA') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_BAJA
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIPO_OPERACION') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIPO_OPERACION
GO

IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_HECHO_ANUNCIO') IS NOT NULL
  DROP PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_HECHO_ANUNCIO
GO

--DROP VIEWS
IF OBJECT_ID('BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.DURACION_PROMEDIO_ANUNCIOS', 'V') IS NOT NULL
	DROP VIEW BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.DURACION_PROMEDIO_ANUNCIOS
GO

--DROP ESQUEMA
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO')
  DROP SCHEMA BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO
GO

--CREO ESQUEMA
CREATE SCHEMA BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION(
	tipo_operacion_id INT IDENTITY(1,1) PRIMARY KEY,
    tipo_operacion_descripcion NVARCHAR(100)
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO(
	barrio_id INT IDENTITY(1,1) PRIMARY KEY,
	barrio_descripcion NVARCHAR(255)
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES(
	ambientes_id INT IDENTITY(1,1) PRIMARY KEY,
	ambientes_descripcion NVARCHAR(100)
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO(
	tiempo_id INT IDENTITY(1,1) PRIMARY KEY,
	anio INT,
    cuatrimestre INT
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA(
	anuncio_fecha_alta_id INT IDENTITY(1,1) PRIMARY KEY,
    anuncio_fecha_alta_descripcion DATETIME
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA(
	anuncio_fecha_baja_id INT IDENTITY(1,1) PRIMARY KEY,
    anuncio_fecha_baja_descripcion DATETIME
);
GO

CREATE TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO(
    anuncio_id INT,
	tipo_operacion_id INT,
    barrio_id INT,
    ambientes_id INT,
    tiempo_id INT,
    anuncio_fecha_alta_id INT,
    anuncio_fecha_baja_id INT,
    promedio_dias INT
);
GO

CREATE FUNCTION BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FX_OBTENER_CUATRIMESTRE(@FECHA DATETIME)
    RETURNS INT
AS
BEGIN
    DECLARE @RESULTADO INT = 1

    IF MONTH(@FECHA) > 4
        SET @RESULTADO = 2
    ELSE IF MONTH(@FECHA) > 8
        SET @RESULTADO = 3

    RETURN @RESULTADO
END
GO


-- FK
ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_TIPO_OPERACION_ID FOREIGN KEY (tipo_operacion_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION (tipo_operacion_id)
GO

ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_BARRIO_ID FOREIGN KEY (barrio_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO (barrio_id)
GO

ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_AMBIENTES_ID FOREIGN KEY (ambientes_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES (ambientes_id)
GO

ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_TIEMPO_ID FOREIGN KEY (tiempo_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (tiempo_id)
GO

ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_FECHA_ALTA_ID FOREIGN KEY (anuncio_fecha_alta_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA (anuncio_fecha_alta_id)
GO

ALTER TABLE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
    ADD CONSTRAINT FK_HECHO_ANUNCIO_FECHA_BAJA_ID FOREIGN KEY (anuncio_fecha_baja_id) REFERENCES BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA (anuncio_fecha_baja_id)
GO

--CREATE PROCEDURE
CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIEMPO
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2021,01)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2021,02)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2021,03)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2022,01)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2022,02)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2022,03)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2023,01)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2023,02)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2023,03)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2024,01)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2024,02)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2024,03)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2027,01)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2027,02)

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO (anio, cuatrimestre)
    VALUES (2027,03)

END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_AMBIENTES
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES(ambientes_descripcion)
    SELECT * FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.AMBIENTES

END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_BARRIO
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO(barrio_descripcion)
    SELECT b.descripcion FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BARRIO b
        
END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_ALTA
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA(anuncio_fecha_alta_descripcion)
    SELECT DISTINCT a.fecha_publicacion FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO a

END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_BAJA
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA(anuncio_fecha_baja_descripcion)
    SELECT DISTINCT a.fecha_finalizacion FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO a

END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIPO_OPERACION
AS
BEGIN

    INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION(tipo_operacion_descripcion)
    SELECT DISTINCT a.tipo_operacion FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO a

END
GO

CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_HECHO_ANUNCIO
AS
BEGIN

INSERT INTO BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO(anuncio_id, tipo_operacion_id, barrio_id, ambientes_id, tiempo_id, anuncio_fecha_alta_id, anuncio_fecha_baja_id, promedio_dias)
    SELECT 
        an.codigo as [codigo anuncio],
        op.tipo_operacion_id as [operacionId],
        barrio_id as [barrioId],
        dim_amb.ambientes_id as [ambienteId], 
        dim_t.tiempo_id as [tiempoId], 
        fa.anuncio_fecha_alta_id as [fechaAltaId],
        fb.anuncio_fecha_baja_id as [fechaBajaId],
        DATEDIFF(DAY,an.fecha_publicacion, an.fecha_finalizacion) as [promedioDiasAnuncio]
    FROM LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO an
    left join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.INMUEBLE i 
    ON an.inmueble_id = i.codigo
    left join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BARRIO b 
    ON i.barrio_id = b.id 
    left join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION op 
    ON an.tipo_operacion = op.tipo_operacion_descripcion  
    left join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES dim_amb 
    ON i.ambientes = dim_amb.ambientes_descripcion 
    right join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA fa 
    ON fa.anuncio_fecha_alta_descripcion = an.fecha_publicacion
    right join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA fb 
    ON fb.anuncio_fecha_baja_descripcion = an.fecha_finalizacion
    join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO dim_t 
    ON dim_t.anio = YEAR(an.fecha_publicacion) 
    AND dim_t.cuatrimestre = BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.FX_OBTENER_CUATRIMESTRE(an.fecha_publicacion)

END
GO

/* TEMPLATE para crear stored procedure
CREATE PROCEDURE BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.
AS
BEGIN

END
GO
*/


-- Ejecucion de procedure
EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIEMPO
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_AMBIENTES
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_BARRIO
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_ALTA
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_ANUNCIO_FECHA_BAJA
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_BAJA

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_TIPO_OPERACION
--SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION

EXEC BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.MIGRAR_BI_HECHO_ANUNCIO
SELECT * FROM BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO


--Cantidad de registros que deben tener cuatrimestre distinto de 1
/*
select 
    month(an.fecha_publicacion),
    count(*)
from LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO an
group by month(an.fecha_publicacion)
having month(an.fecha_publicacion) > 4

--VALIDACION DE DIMENSION TIEMPO 
select * from BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO
where tiempo_id not in (10,11,13) --> todos los registros caen en 10(año 2024, cuatrimestre 1), 11 (2024	2), 12 (2027 1)
select * from BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO
select * from BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_ANUNCIO_FECHA_ALTA
*/

/********************
    EJERCICIO 01
*********************/

CREATE VIEW BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.DURACION_PROMEDIO_ANUNCIOS
AS
	select 
        t.anio, 
        t.cuatrimestre,
        tipo.tipo_operacion_descripcion as tipoOperacion,
        b.barrio_descripcion as barrio,
        a.ambientes_descripcion as ambientes,
        CEILING(SUM(an.promedio_dias)/COUNT(an.anuncio_id)) as promedioEnDias,
        SUM(an.promedio_dias) as diasTotales,
        COUNT(an.anuncio_id) as cantidadAnuncios
    from BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_HECHO_ANUNCIO an
    join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIPO_OPERACION tipo on tipo.tipo_operacion_id = an.tipo_operacion_id
    join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_BARRIO b on b.barrio_id = an.barrio_id
    join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_AMBIENTES a on a.ambientes_id = an.ambientes_id
    join BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BI_TIEMPO t on t.tiempo_id = an.tiempo_id
    group by t.anio, t.cuatrimestre, b.barrio_descripcion, a.ambientes_descripcion, tipo.tipo_operacion_descripcion

GO

--Consulta
select top 3 * from BI_LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.DURACION_PROMEDIO_ANUNCIOS an
order by an.barrio, an.cuatrimestre, an.anio

--VALIDACION
--anio	cuatrimestre	tipoOperacion	          barrio	ambientes	  promedioEnDias     diasTotales	cantidadAnuncios
--2024	       1	    Tipo Operación Venta	Agronomía	4 ambientes	        4	                114	              25

select 
    b.descripcion, 
    a.id, 
    tipo.id,
    SUM(DATEDIFF(DAY,an.fecha_publicacion, an.fecha_finalizacion)) as diastotales
from LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.ANUNCIO an
inner join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.INMUEBLE i on an.inmueble_id = i.codigo
inner join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.BARRIO b on i.barrio_id = b.id
inner join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.AMBIENTES a on i.ambientes = a.id
inner join LOS_HEREDEROS_DE_MONTIEL_Y_EL_DATO_PERSISTIDO.TIPO_OPERACION tipo on tipo.id = an.tipo_operacion
where b.descripcion = 'Agronomía' and a.id= '4 ambientes' and  tipo.id = 'Tipo Operación Venta'
group by b.descripcion, a.id, tipo.id

