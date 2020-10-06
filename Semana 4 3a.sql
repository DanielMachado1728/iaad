select Pnome
from FUNCIONARIO, DEPARTAMENTO, TRABALHA_EM
where DEPARTAMENTO.Dnumero = 4 and TRABALHA_EM.horas > 15 and TRABALHA_EM.Pnr = 10 and TRABALHA_EM.Fcpf = Funcionario.Cpf;
