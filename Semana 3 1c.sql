select P.Nome_programador, LP.Linguagem
from PROGRAMADOR AS P, LINGUAGEM_PROGRAMACAO AS LP INNER JOIN PROGRAMADOR_LINGUAGEM AS PL
ON LP.Id_linguagem = PL.Id_linguagem
where PL.Id_programador = P.Id_programador; 
