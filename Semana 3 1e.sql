select Nome_programador
from PROGRAMADOR as P left join  PROGRAMADOR_LINGUAGEM as PL
on P.Id_programador = PL.Id_programador
where PL.Id_programador is Null;
