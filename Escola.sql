create table Instituicao(
	Id int identity(1,1) primary key,
	Nome varchar(60) not null,
	Endereco varchar(100) not null,
	Cnpj varchar(14) not null
);
create table Aluno(
	Id int identity(1,1),
	Nome varchar(20) not null,
	Sobrenome varchar(50) not null,
	Matricula int not null,
	Id_Instituicao int not null,

	CONSTRAINT PK_ALUNO_ID PRIMARY KEY (Id),
	CONSTRAINT FK_ALUNO_INSTITUICAO FOREIGN KEY (Id_Instituicao) REFERENCES Instituicao(Id)
);