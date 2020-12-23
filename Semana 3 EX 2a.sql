create schema biblioteca;
use biblioteca;
create table LIVRO(
	Cod_livro CHAR (5),
    Titulo VARCHAR (75) NOT NULL,
    Nome_editora VARCHAR (45) NOT NULL,
    PRIMARY KEY (Cod_livro));

create table LIVRO_AUTOR(
	Cod_livro CHAR (5),
    Nome_autor VARCHAR (50) NOT NULL,
    PRIMARY KEY(Cod_livro, Nome_autor));

create table EDITORA(
	Nome VARCHAR(45) NOT NULL,
    Endereco VARCHAR (70),
    Telefone VARCHAR (16),
    PRIMARY KEY(Nome));

create table Livro_Copias(
	Cod_livro CHAR (5),
    Cod_unidade CHAR (4),
    Qt_copias INT,
    PRIMARY KEY(Cod_livro, Cod_unidade));

create table LIVRO_EMPRESTIMO(
	Cod_livro CHAR (5),
    Cod_unidade CHAR(4),
    Nr_cartao CHAR(6),
    Data_emprestimo DATE,
    Data_devolucao DATE,
    PRIMARY KEY(Cod_livro, Cod_unidade));

create table UNIDADE_BIBLIOTECA(
	Cod_unidade CHAR(4),
    Nome_unidade VARCHAR(50),
	Endereco VARCHAR(70),
    PRIMARY KEY(Cod_unidade));
    
create table USUARIO(
	Num_cartao CHAR (6),
    Nome VARCHAR (50) NOT NULL,
    Endereco VARCHAR(70) NOT NULL,
    Telefone VARCHAR (16) NOT NULL,
    PRIMARY KEY (Num_cartao));
    
insert into LIVRO values
	('#0001','Sistemas de banco de dados', 'Pearson'),
    ('#0002', 'Introdução à Programação com Python: Algoritmos e lógica de programação','Novatec');
insert into LIVRO_AUTOR values
	('#0001', 'Navathe'),
    ('#0002', 'Nilo Ney Coutinho');
insert into EDITORA values
	('Pearson', 'Av. Eng. Domingos Ferreira, 2160 - Boa Viagem, Recife - PE, 51511-020', '(19) 3743-5669'),
    ('Novatec', 'Av. São Paulo, 1401 - Estados, João Pessoa - PB, 58030-041', '(11) 2959-6529');
insert into LIVRO_COPIAS values
	('#0001', '###1', 14),
    ('#0002', '###2', 9);
insert into LIVRO_EMPRESTIMO values
	('#0001', '###1', '000100', '2020-08-02', '2020-08-22'),
    ('#0002', '###2', '000200', '2020-08-04', '2020-08-24');
insert into UNIDADE_BIBLIOTECA values
	('###1', 'Sede_UFRPE', 'Rua Dom Manuel de Medeiros, s/n - Dois Irmãos, Recife - PE, 52171-900'),
    ('###2', 'Sede_UFRPE', 'Rua Dom Manuel de Medeiros, s/n - Dois Irmãos, Recife - PE, 52171-900');
insert into USUARIO values
	('000100', 'Leonardo Rodrigues', 'Rua x, 520, Boa viagem, Recife', '81 91234-5678'),
    ('000200', 'Paulo Barros', 'Rua y, 6099, Iputinga, Recife', '81 95555-9999');

alter table LIVRO ADD FOREIGN KEY(Nome_Editora) REFERENCES EDITORA(Nome);
alter table LIVRO_AUTOR ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_COPIAS ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_livro) REFERENCES LIVRO(Cod_livro);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Cod_unidade) REFERENCES UNIDADE_BIBLIOTECA(Cod_unidade);
alter table LIVRO_EMPRESTIMO ADD FOREIGN KEY(Nr_cartao) REFERENCES USUARIO(Num_cartao);
