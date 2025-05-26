insert into DataWareHouse.dbo.dim_zonas (NomZona)
select distinct ZONA 
from DataLake.dbo.dl_homicidios