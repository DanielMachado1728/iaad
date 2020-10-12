-- Exemplo 2a 1
delete from pedido where numpedido = 1;
select * from itempedido;

-- Exemplo 2a 2
update produto set CodProd = '#001' where CodProd = '#100';
select * from itempedido;

-- Exemplo 2a 3
insert into ItemPedido values
(3, 7, '#101', NULL, 129.99);
