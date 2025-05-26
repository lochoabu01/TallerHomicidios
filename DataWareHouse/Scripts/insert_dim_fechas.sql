--Toma el lunes como el dia 1
set datefirst 1

insert into DataWareHouse.dbo.dim_fechas (Fecha,Annio,Mes,Dia,Semana,Trimestre,DiaSemana)
select distinct FECHA_HECHO,year(FECHA_HECHO), month(FECHA_HECHO),day(FECHA_HECHO),DATEPART(WEEK,FECHA_HECHO),DATEPART(quarter,FECHA_HECHO),DATEPART(weekday,FECHA_HECHO)
from DataLake.dbo.dl_homicidios
order by FECHA_HECHO,year(FECHA_HECHO), month(FECHA_HECHO),day(FECHA_HECHO),DATEPART(WEEK,FECHA_HECHO),DATEPART(quarter,FECHA_HECHO),DATEPART(weekday,FECHA_HECHO)
