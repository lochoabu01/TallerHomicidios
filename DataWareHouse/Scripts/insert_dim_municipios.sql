insert into DataWareHouse.dbo.dim_municipios (CodMpio,NomMpio,Latitud,Longitud ,CodDepto)
select distinct COD_MPIO ,NOM_MPIO ,LATITUD ,LONGITUD ,COD_DPTO 
from DataLake.dbo.dl_municipios