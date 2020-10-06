select Pnome,minicial,  Unome
from FUNCIONARIO, DEPENDENTE
where FUNCIONARIO.Sexo = DEPENDENTE.Sexo and DEPENDENTE.Fcpf = FUNCIONARIO.Cpf;
