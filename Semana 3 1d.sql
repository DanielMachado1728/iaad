select Nome_programador, Linguagem
from ((PROGRAMADOR as P LEFT JOIN PROGRAMADOR_LINGUAGEM as PL 
on P.Id_programador = PL.Id_programador) LEFT JOIN LINGUAGEM_PROGRAMACAO as LP
on PL.Id_linguagem = LP.Id_linguagem);
