select Nome_startup, Nome_programador
from STARTUP as S LEFT JOIN PROGRAMADOR as P
on S.Id_startup = P.Id_startup
where P.Nome_programador is Null;
