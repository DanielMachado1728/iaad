UPDATE Funcionario
SET salario = salario - (salario*0.1)
where (select Dnumero from DEPARTAMENTO where Dnome = 'Administração') = Dnr;
