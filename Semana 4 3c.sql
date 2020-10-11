select Pnome, Minicial, Unome
from FUNCIONARIO
where cpf_supervisor = 
	(select cpf 
	from funcionario 
	where pnome = 'Jennifer' and unome = 'Souza');
