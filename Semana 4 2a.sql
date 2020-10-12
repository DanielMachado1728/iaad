create database venda;
use venda;

create table CLIENTE(
	CodCli char(5),
    Nome VARCHAR (50),
    Email VARCHAR (40) UNIQUE,
    Telefone VARCHAR (16),
    PRIMARY KEY(CodCli));

create table PRODUTO(
	CodProd CHAR (4),
    Descricao VARCHAR (200),
    PRIMARY KEY(CodProd));
	
create table PEDIDO(
	NumPedido INT,
    CodCli Char(5),
    Data DATE,
    PRIMARY KEY(NumPedido),
    foreign key (CodCli) references CLIENTE(CodCli)
);

create table ItemPedido(
	NumPedido INT,
    NumItem INT,
    CodProd CHAR(4),
    Quantidade INT NOT NULL,
    PreçoUnitario DECIMAL (6,2),
    PRIMARY KEY(NumPedido, NumItem),
    foreign key (Numpedido) references PEDIDO(NumPedido) on delete cascade,
    foreign key (CodProd) references PRODUTO(CodProd) on update cascade
);

insert into CLIENTE values
('#0001', 'Afonso Rodrigues', 'afonso@gmail.com', '81 91234-1234'),
('#0002', 'Derick Silva', 'dericks@gmail.com', '81 998765432');

insert into PRODUTO values
('#100','Fone de ouvido marca x ...'),
('#101', 'Tênis marca y ...');

insert into PEDIDO values
(1, '#0001', '2020-09-09'),
(2, '#0002', '2020-09-09');

insert into ItemPedido values
(1, 5, '#100', 1, 150.00),
(2, 7, '#101', '2', 129.99);
