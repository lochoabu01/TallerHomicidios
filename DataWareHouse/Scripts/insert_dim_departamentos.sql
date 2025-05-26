insert into DataWareHouse.dbo.dim_departamentos (CodDepto,NomDepto,Latitud,Longitud)
select distinct COD_DPTO ,NOM_DPTO ,Latitud,Longitud
from DataLake.dbo.dl_departamentos