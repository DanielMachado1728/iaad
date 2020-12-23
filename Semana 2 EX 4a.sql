create schema venda;
use venda;
create table CLIENTE(
	  CodCli CHAR(5),
    Nome VARCHAR(50),
    Email Varchar(40),
    Telefone Varchar(16),
    PRIMARY KEY(Codcli));
create table PRODUTO(
	  CodProd CHAR(4),
    Descricao VARCHAR(200),
    PRIMARY KEY(CodProd));
create table PEDIDO(
	  NumPedido INT,
    CodCli CHAR(5),
    Data DATE,
    PRIMARY KEY(NumPedido),
    FOREIGN KEY (CodCli) references CLIENTE(CodCli));
create table ItemPedido(
	  NumPedido INT,
    NumItem INT,
    CodProd CHAR(4),
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(6,2),
    PRIMARY KEY(NumPedido, NumItem),
    foreign key (Numpedido) references PEDIDO(NumPedido) on delete cascade,
    foreign key (CodProd) references PRODUTO(CodProd) on update cascade);

insert into CLIENTE values
	('#1234', 'Nelson Costa', 'nelsonc@gmail.com', '81 92222-3333'),
  ('#4321', 'Raquel Lima', 'raquellima@gmail.com', '81 91200-8888');
insert into PRODUTO values
	('#112', 'Notebook da marca x...'),
  ('#390', 'Microfone gooseneck da marca y...');
insert into PEDIDO values
	(1, '#1234', '2020-12-22'),
  (2, '#4321', '2020-12-24');
insert into ItemPedido values
	(1, 3, '#112', 1, 1519.99),
  (2, 6, '#390', 3, 279.99);
    
