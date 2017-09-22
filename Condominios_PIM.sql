

USE [Condominios_PIM]
GO

-- ESTA LINHA VERIFICA SE A TABELA JA EXISTE
-- SE ELA EXISTIR ENTAO A TABELA SERA DESTRUIDA
-- PARA SER RECOSNTRUIDA
-- O OBJETIVO NESTE CASO A PARA INSTALACAO DE UM BANCO 
-- LIMPO, E O SCRIPT REALIZA ESTA VERIFICACAO PARA 
-- QUE POSSA SEMPRE SER EXECUTADO UM NUMERO INFINITO DE VEZES
IF OBJECT_ID(N'tb_Condômino', N'U') IS NOT NULL
   DROP TABLE tb_Condômino;


 --  ==== CRIANDO A TABELA Tb_Condômino ======
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE tb_Condômino(
	Cod_Condomino int IDENTITY(5,1) NOT NULL,
	Nome_Condomino varchar(50) NOT NULL,
	CPF_Condomino varchar(18)NOT NULL,
	Tel_Condomino varchar(10)NOT NULL,
	Cel_Condomino varchar(11) NOT NULL,
	Apto_Condomino varchar(3) NOT NULL,
	Vaga_Condomino varchar(4) NOT NULL,
	Cod_Proprietario varchar(50) NOT NULL,
 CONSTRAINT [PK_tb_Condômino] PRIMARY KEY CLUSTERED 
(
[Cod_Condomino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


-- ======= POPULANDO COM DADOS DE TESTE

--USE [Condominios_PIM]
--GO

--INSERT INTO tb_Condômino(cod_condomino,Nome_Condomino,CPF_Condomino,Tel_Condomino,Cel_Condomino,Apto_Condomino,Vaga_Condomino,Cod_Proprietario) VALUES (1,'Sureya Costa','352-170-448-37','115686-6496','1198905-8891','31','3104','2504');
--INSERT INTO tb_Condômino(cod_condomino,Nome_Condomino,CPF_Condomino,Tel_Condomino,Cel_Condomino,Apto_Condomino,Vaga_Condomino,Cod_Proprietario) VALUES (1,'Junior Souza','250-948-339-27','115667-7525','1198774-3019','32','3204','3003');
--INSERT INTO tb_Condômino(cod_condomino,Nome_Condomino,CPF_Condomino,Tel_Condomino,Cel_Condomino,Apto_Condomino,Vaga_Condomino,Cod_Proprietario) VALUES (1,'Rafael Frigo','283-750-997-30','115667-3205','1194112-0249','33','3304','4807');
--GO

---- ======= CONFERINDO DADOS DE TESTE

--SELECT cod_condomino,Nome_Condomino,CPF_Condomino,Tel_Condomino,Cel_Condomino,Apto_Condomino,Vaga_Condomino,Cod_Proprietario FROM  tb_Condômino;


USE [Condominios_PIM]
GO

IF OBJECT_ID(N'tb_Proprietário', N'U') IS NOT NULL
   DROP TABLE tb_Proprietário;


 --  ==== CRIANDO A TABELA Tb_Proprietário ======
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE tb_Proprietário(
	Cod_Proprietario int IDENTITY(50,1) NOT NULL,
	Nome_Proprietario varchar(50) NOT NULL,
	CPF_Proprietario varchar(18)NOT NULL,
	Tel_Proprietario varchar(10)NOT NULL,
	Cel_Proprietario varchar(11) NOT NULL,
	Endereco_Proprietario varchar(100) NOT NULL,
	
 CONSTRAINT [PK_tb_Proprietário] PRIMARY KEY CLUSTERED 
 (
	[Cod_Proprietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [Condominios_PIM]
GO

IF OBJECT_ID(N'tb_Fornecedor', N'U') IS NOT NULL
   DROP TABLE tb_Fornecedor;


 --  ==== CRIANDO A TABELA Tb_Fornecedor ======
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE tb_Fornecedor(
	Cod_Empresa int IDENTITY(100,1) NOT NULL,
	Nome_Empresa varchar(20) NOT NULL,
	Razao_Social varchar(25)NOT NULL,
	CNPJ_Empresa varchar(14)NOT NULL,
	Endereco_Empresa varchar(50) NOT NULL,
	IE_Empresa varchar(12) NOT NULL,
	
 CONSTRAINT [PK_tb_Fornecedor] PRIMARY KEY CLUSTERED 
 (
	[Cod_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


USE [Condominios_PIM]
GO

IF OBJECT_ID(N'tb_Funcionário', N'U') IS NOT NULL
   DROP TABLE tb_Funcionário;


 --  ==== CRIANDO A TABELA Tb_Funcionário ======
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE tb_Funcionário(
	Cod_Funcionario int IDENTITY(5,1) NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	CPF_Funcionario varchar(18)NOT NULL,
	Tel_Funcionario varchar(10)NOT NULL,
	Cel_Funcionario varchar(11) NOT NULL,
		
 CONSTRAINT [PK_tb_Funcionário] PRIMARY KEY CLUSTERED 
 (
	[Cod_Funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


USE [Condominios_PIM]
GO

IF OBJECT_ID(N'tb_Usuário', N'U') IS NOT NULL
   DROP TABLE tb_Usuário;


 --  ==== CRIANDO A TABELA tb_Usuário ======
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE tb_Usuário(
	Cod_Usuario int IDENTITY(5,1) NOT NULL,
	Nome_Usuario varchar(50) NOT NULL,
	CPF_Funcionario varchar(18)NOT NULL,
	Tipo_Usuario varchar(10)NOT NULL,
	Email_Usuario varchar(11) NOT NULL,
	Senha_Usuario varchar(6) NOT NULL,
		
 CONSTRAINT [PK_tb_Usuário] PRIMARY KEY CLUSTERED 
 (
	[Cod_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]