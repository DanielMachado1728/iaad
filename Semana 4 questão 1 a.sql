create database Biblioteca;

use Biblioteca;
CREATE TABLE LIVRO(
	Cod_livro CHAR(4) NOT NULL,
    Titulo VARCHAR(60),
    Nome_editora VARCHAR(15),
    PRIMARY KEY(Cod_livro));

CREATE TABLE LIVRO_AUTOR(
	Cod_livro CHAR(4) NOT NULL,
    Nome_autor VARCHAR(40),
    PRIMARY KEY(Cod_livro));
    
CREATE TABLE EDITORA(
	Nome VARCHAR(15) NOT NULL,
    Endereço VARCHAR(60),
    Telefone VARCHAR(15),
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
    Endereco VARCHAR(60),
    PRIMARY KEY(Cod_unidade));

CREATE TABLE USUARIO(
	Num_cartao CHAR(15) NOT NULL,
    Nome VARCHAR(40),
    Endereco VARCHAR(60),
    Telefone VARCHAR(15),
    PRIMARY KEY(Num_cartao));

insert into LIVRO values
('0001','Sistemas de banco de dados','Pearson'),
('0002','Algoritmos teoria e prática','Campus');

insert into LIVRO_AUTOR values
('0001','Navathe'),
('0002', 'Thomas H Cormen');

insert into EDITORA values
('Campus','Rua 7 de Setembro, 111 an 16 -Centro- Rio de Janeiro, RJ','55 21 38521926'),
('Pearson','Av.Eng. Domingos Ferreira, 2160 - Boa Viagem, Recife-PE', NULL);

insert into LIVRO_COPIAS values
('0001','#001', 10),
('0002','#002', 7);

insert into LIVRO_EMPRESTIMO values
('0001','#001','123456789012345','2020-09-10','2020-10-10'),
('0002','#002','543210987654321','2020-09-06','2020-10-06');

insert into UNIDADE_BIBLIOTECA values
('#001', 'Sede_UFRPE', 'Rua Dom Manuel de Medeiros,s/n -Dois Irmãos, Recife-PE'),
('#002', 'Sede_Ufrpe', 'Rua Dom Manuel de Medeiros,s/n -Dois Irmãos, Recife-PE');

insert into usuario values
('123456789012345','Allan Silva', 'Rua 5,122, Espinheiro, Recife-PE','81 988887777'),
('543210987654321', 'Ana Carolina', 'Rua 2, 998, Boa Viagem, Recife-Pe','81 91234-5678');


alter table LIVRO ADD FOREIGN KEY(Nome_editora) REFERENCES EDITORA(Nome);
alter table LIVRO_AUTOR ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Nr_cartao) REFERENCES USUARIO(Num_cartao);

