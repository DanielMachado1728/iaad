create database BD_Startup;
use BD_Startup;

create table STARTUP(
	Id_startup INT NOT NULL,
  Nome_startup VARCHAR(25),
  PRIMARY KEY(Id_startup));
create table LINGUAGEM_PROGRAMACAO(
	Id_linguagem INT NOT NULL,
  Linguagem VARCHAR(20),
  PRIMARY KEY(Id_linguagem));
create table PROGRAMADOR(
	Id_programador INT NOT NULL,
  Id_startup INT,
  Nome_programador VARCHAR(15),
  PRIMARY KEY(Id_programador),
  foreign key (Id_startup) references STARTUP (Id_startup));

create table PROGRAMADOR_LINGUAGEM(
	Id_programador INT,
  Id_linguagem INT,
  PRIMARY KEY(Id_programador, Id_linguagem),
	foreign KEY (Id_programador) references PROGRAMADOR (Id_programador),
  foreign key (Id_linguagem) references LINGUAGEM_PROGRAMACAO (Id_linguagem));
    
insert into STARTUP values
	(1, 'Startup 1'),
  (2, 'Startup 2'),
  (3, 'Startup 3'),
  (4, 'Startup 4'),
  (5, 'Startup 5'),
  (6, 'Startup 6');
insert into LINGUAGEM_PROGRAMACAO values
	(1, 'Python'),
  (2, 'PHP'),
  (3, 'Java'),
  (4, 'Swift'),
  (5, 'C#'),
  (6, 'JavaScript');
insert into PROGRAMADOR values
	(1, 1, 'João'),
  (2, 2, 'Paula'),
  (3, 3, 'Renata'),
  (4, 4, 'Felipe'),
  (5, 4, 'Ana'),
  (6, 1, 'Alexandre');
insert into PROGRAMADOR_LINGUAGEM values
	(1, 1),
  (1, 2),
  (2, 3),
  (3, 4),
  (3, 5),
  (4, 5);
