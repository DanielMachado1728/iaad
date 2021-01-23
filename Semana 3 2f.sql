CREATE VIEW gerentes(nome_departamento, nome_gerente, salario_gerente)
as select Dnome, Pnome, Salario
	from DEPARTAMENTO AS D, FUNCIONARIO AS F
	where Dnumero = Dnr and Cpf = Cpf_gerente;

-- testando com o uso de uma consulta
select nome_departamento, nome_gerente, salario_gerente
from gerentes;
