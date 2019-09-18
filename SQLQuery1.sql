
create database T_AutoPecas


use T_AutoPecas;

CREATE TABLE Usuario
(
      IdUsuario INT PRIMARY KEY IDENTITY
	 ,Email VARCHAR (250) NOT NULL
	 ,Senha VARCHAR (250) NOT NULL

);
   INSERT INTO Usuario (Email,Senha) VALUES ('Lari@.com','789');
   INSERT INTO Usuario (Email,Senha) VALUES ('Gabi@.com','456');
   INSERT INTO Usuario (Email,Senha) VALUES ('Henri@.com','321');
    
	SELECT * FROM Usuario;
	


CREATE TABLE Fornecedores
(
      IdFornecedores INT PRIMARY KEY IDENTITY
	 ,IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
	 ,Cnpj INT 
	 ,RazaoSocial VARCHAR (250) NOT NULL
	 ,NomeFantasia  VARCHAR (250) NOT NULL
	 ,Endereco VARCHAR (250) NOT NULL	 
);

	INSERT INTO Fornecedores(Cnpj,RazaoSocial,NomeFantasia,Endereco,IdUsuario) VALUES ('123','Motocars','Cars','R.Azevedo','2');
	INSERT INTO Fornecedores(Cnpj,RazaoSocial,NomeFantasia,Endereco,IdUsuario) VALUES('456','CarrosDail','Dail','R.Arnaldo','1');
	INSERT INTO Fornecedores(Cnpj,RazaoSocial,NomeFantasia,Endereco,IdUsuario) VALUES('789','CarrosBlack','Pretinho','R.Coelho','3');

	SELECT * FROM Fornecedores


CREATE TABLE Pecas
(
      IdPecas  INT PRIMARY KEY IDENTITY
	 ,IdFornecedores INT FOREIGN KEY REFERENCES Fornecedores(IdFornecedores)
	 ,Codigo INT 
	 ,Descricao VARCHAR (250) NOT NULL
	 ,Peso  INT
	 ,PrecoDeCusto INT
	 ,PrecoDeVenda INT 
);
	 ALTER TABLE Pecas
	 ALTER COLUMN Peso VARCHAR (250) NOT NULL

	INSERT INTO Pecas(Codigo,Descricao,Peso,PrecoDeCusto,PrecoDeVenda,IdFornecedores) VALUES (111,'Disco de freio','5 kilos',100,150,2);
	INSERT INTO Pecas(Codigo,Descricao,Peso,PrecoDeCusto,PrecoDeVenda,IdFornecedores) VALUES(222,'Correia','6 kilos',200,250,1);
	INSERT INTO Pecas(Codigo,Descricao,Peso,PrecoDeCusto,PrecoDeVenda,IdFornecedores) VALUES(333,'Cubo de roda','3 kilos',300,350,3);
	
	SELECT * FROM Pecas

