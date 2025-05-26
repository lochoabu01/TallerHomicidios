		CREATE TABLE dbo.dim_dias_semana (
		DiaSemana tinyint IDENTITY(1,1) NOT NULL,
		NomDiaSemana nvarchar(10) NOT NULL,
		NomCortoDiaSemana char(3) NOT NULL,
		CONSTRAINT DIM_Dias_Semana_PK PRIMARY KEY (DiaSemana)
	);