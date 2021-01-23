CREATE VIEW informacao_projeto(nome_projeto, nome_departamento, numero_funcionarios, horas)
as select P.Projnome, D.Dnome, count(*), Sum(Horas)
from PROJETO as P, DEPARTAMENTO as D, TRABALHA_EM as T
where D.Dnumero = P.Dnum and P.Projnumero = T.Pnr
group by Pnr;

-- Consulta para testar a view
select nome_projeto, nome_departamento, numero_funcionarios, horas
from informacao_projeto;
