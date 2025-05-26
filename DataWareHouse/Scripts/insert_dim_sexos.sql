insert into DataWareHouse.dbo.dim_sexos (NomSexo)
select distinct SEXO 
from DataLake.dbo.dl_homicidios