-- (I)
select Nome_programador, Nome_startup
from PROGRAMADOR, STARTUP
where PROGRAMADOR.Id_startup = STARTUP.Id_startup;

-- (II)
select P.Nome_programador, S.Nome_startup
from PROGRAMADOR AS P INNER JOIN STARTUP AS S
ON P.Id_startup = S.Id_startup;

-- (III)
select Nome_programador, Nome_startup
from PROGRAMADOR NATURAL JOIN STARTUP;
