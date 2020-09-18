create schema matricula_daniel; 
use matricula_daniel;
create table ALUNO(
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(15) NOT NULL,
    curso VARCHAR(25) NOT NULL,
    data_nasc DATE,
    primary key(cpf));
    
create table DISCIPLINA(
	num_disciplina VARCHAR(4) NOT NULL,
    Dnome VARCHAR(20),
    dept VARCHAR(15),
    PRIMARY KEY(num_disciplina));
    
create table INSCRICAO(
	cpf VARCHAR(11) NOT NULL,
    num_disciplina VARCHAR(4) NOT NULL,
    semestre CHAR(6) NOT NULL,
    nota INT,
    PRIMARY KEY(num_disciplina, semestre));

create table LIVRO_ADOTADO(
	num_disciplina VARCHAR(4) NOT NULL,
    semestre CHAR(6) NOT NULL,
    isbn_livro CHAR(13),
    PRIMARY KEY(num_disciplina, semestre));
    
create table LIVRO(
	isbn_livro CHAR(13) NOT NULL,
    titulo_livro VARCHAR(35),
    editora VARCHAR(15),
    autor VARCHAR(20),
    PRIMARY KEY(isbn_livro));
    
insert into ALUNO values
	('12345678912','Daniel Machado','BSI','2000-06-28');
insert into DISCIPLINA values
	('0001','iaad','deinfo');
insert into INSCRICAO values
	('12345678912','0001','2020.3','9');
insert into LIVRO_ADOTADO values
	('0001','2020.3','1234567890123');
insert into LIVRO values
	('1234567890123','Sistemas de banco de dados','Pearson','Ramez Elmasri');
