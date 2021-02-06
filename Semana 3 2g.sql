CREATE VIEW Dados_dep_pesquisa (nome_funcionario, nome_supervisor, salario_funcionario)
AS select F.Pnome, G.Pnome, F.salario
from FUNCIONARIO as F, FUNCIONARIO as G, DEPARTAMENTO as D
where D.Dnome = 'Pesquisa' and D.Dnumero = F.Dnr and F.cpf_supervisor = G.cpf; 

-- Para testar
select * from Dados_dep_pesquisa;
