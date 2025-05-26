CREATE TABLE DataWareHouse.dbo.dim_departamentos (
	CodDepto tinyint NOT NULL,
	NomDepto nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Latitud float NULL,
	Longitud float NULL,
	CONSTRAINT dim_departamentos_pk PRIMARY KEY (CodDepto)
);