CREATE TABLE DataWareHouse.dbo.dim_municipios (
	CodMpio int NOT NULL,
	NomMpio nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Latitud float NULL,
	Longitud float NULL,
	CodDepto tinyint NULL,
	CONSTRAINT dim_municipios_pk PRIMARY KEY (CodMpio),
	CONSTRAINT dim_municipios_dim_departamentos_FK FOREIGN KEY (CodDepto) REFERENCES DataWareHouse.dbo.dim_departamentos(CodDepto) ON DELETE CASCADE ON UPDATE CASCADE
);