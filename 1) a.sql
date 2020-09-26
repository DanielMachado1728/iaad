create database Biblioteca;

use Biblioteca;
CREATE TABLE LIVRO(
	Cod_livro CHAR(4) NOT NULL,
    Titulo VARCHAR(20),
    Nome_editora VARCHAR(15),
    PRIMARY KEY(Cod_livro));

CREATE TABLE LIVRO_AUTOR(
	Cod_livro CHAR(4) NOT NULL,
    Nome_autor VARCHAR(40),
    PRIMARY KEY(Cod_livro));
    
CREATE TABLE EDITORA(
	Nome VARCHAR(15) NOT NULL,
    Endereço VARCHAR(40),
    Telefone CHAR(9),
    PRIMARY KEY(Nome));

CREATE TABLE LIVRO_COPIAS(
	Cod_livro CHAR(4) NOT NULL,
    Cod_unidade CHAR(4) NOT NULL,
    Qt_copia INT,
    PRIMARY KEY(Cod_livro, Cod_unidade));
    
CREATE TABLE LIVRO_EMPRESTIMO(
	Cod_livro CHAR(4) NOT NULL,
    Cod_unidade CHAR(4) NOT NULL,
    Nr_cartao CHAR(15) NOT NULL,
    Data_emprestimo DATE NOT NULL,
    Data_devolucao DATE NOT NULL,
    PRIMARY KEY(Cod_livro, Cod_unidade, Nr_cartao));
    
CREATE TABLE UNIDADE_BIBLIOTECA(
	Cod_unidade CHAR(4) NOT NULL,
    Nome_unidade VARCHAR(20),
    Endereco VARCHAR(40),
    PRIMARY KEY(Cod_unidade));

CREATE TABLE USUARIO(
	Num_cartao CHAR(15) NOT NULL,
    Nome VARCHAR(40),
    Endereco VARCHAR(40),
    Telefone CHAR(9),
    PRIMARY KEY(Num_cartao));
    
alter table LIVRO ADD FOREIGN KEY(Nome_editora) REFERENCES EDITORA(Nome);
alter table LIVRO_AUTOR ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Nr_cartao) REFERENCES USUARIO(Num_cartao);


    
