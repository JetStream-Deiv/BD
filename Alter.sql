CREATE DATABASE BDAULAFRIB
USE BDAULAFRIB

CREATE TABLE TBPRODUTO(
IDPRODUTO INTEGER IDENTITY (1,1),
NOMEPRODUTO VARCHAR (50) NOT NULL,
PRECOPRODUTO DECIMAL (18,2) NOT NULL,
QUANTIAESTOQUE INTEGER NOT NULL,
QUANTIDADEMIN INTEGER NOT NULL,
DATACAD DATE NULL,
CONSTRAINT PKPRODUTO PRIMARY KEY (IDPRODUTO))

INSERT INTO TBPRODUTO VALUES
('PC', 1000.99, 2, 1, '01/01/2010'),
('TV', 2000.50, 11, 10, '09/10/2008'),
('MOUSE', 400.99, 100, 70, '02/02/2009'),
('TECLADO', 900.10, 300, 150, '11/11/2020'),
('FREEZER',1800,10,10,'01/08/2022'),
('LAVA LOU?A',1500,10,10,'01/08/2022'),
('MICRO ONDAS',500,20,10,'01/08/2022'),
('TV 55',3000,40,15,'01/08/2022'),
('GELADEIRA',2500,10,5,'01/07/2022'),
('FOG?O',700,30,20,'01/07/2022'),
('CELULAR',1000,50,10,'01/08/2022')

--DDL
--ALTERAR ESTRUTURA NA TABELA. ? DIFERENTE DE ALTERAR DADOS NA TABELA
ALTER TABLE TBPRODUTO ADD QUANTIADIAS INTEGER --N?O TEM COMO SER NOT NULL, SEMPRE SER? NULL
ALTER TABLE TBPRODUTO ADD NOMEMES VARCHAR (50)--? UM ALTER TABLE PARA CADA CAMPO NOVO.

--AGORA PARA ALTERAR DADOS DA TABELA SEM CONDI??O (WHERE):
UPDATE TBPRODUTO SET QUANTIADIAS = DATEDIFF(DAY, DATACAD,GETDATE())

UPDATE TBPRODUTO SET NOMEMES = DATENAME(MONTH,DATACAD), QUANTIAESTOQUE=QUANTIAESTOQUE+5 
WHERE QUANTIDADEMIN = 10


--EXCLUIR CAMPO DA TABELA
ALTER TABLE TBPRODUTO DROP COLUMN NOMEMES