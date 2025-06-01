INSERT INTO DataWareHouse.dbo.fac_homicidios 
(FechaHecho, CodMpio, IdZona, IdSexo, Cantidad)
SELECT FECHA_HECHO AS FechaHecho
	, COD_MUNI AS CodMpio
	, (SELECT IdZona FROM DataWareHouse.dbo.dim_zonas WHERE NomZona = H.ZONA) AS IdZona
	, (SELECT IdSexo FROM DataWareHouse.dbo.dim_sexos WHERE NomSexo = H.SEXO) AS IdSexo
	, CANTIDAD AS Cantidad
FROM DataLake.dbo.dl_homicidios AS H