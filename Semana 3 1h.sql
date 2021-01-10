-- Foi feita a inserção abaixo apenas para facilitar a visualização após o resultado da consulta.
use bd_startup;
insert into startup values
	(100, 'Startup 100');
insert into programador values
	(10, Null, 'Carlos');

-- Full Outer Join
select Nome_startup, Nome_programador
from STARTUP as S RIGHT JOIN PROGRAMADOR as P
on S.Id_startup = P.Id_startup
union all
select Nome_startup, Nome_programador
from STARTUP as S LEFT JOIN PROGRAMADOR as P
on S.Id_startup = P.Id_startup
where P.Nome_programador is Null;
