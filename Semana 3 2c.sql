select Pnome, Minicial, Unome, salario
from FUNCIONARIO
where Salario - 10000 > (select min(salario)
				from FUNCIONARIO);
