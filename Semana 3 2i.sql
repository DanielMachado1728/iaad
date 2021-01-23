CREATE VIEW informacao_projeto2(nome_projeto, nome_departamento, numero_funcionarios, horas)
as select P.Projnome, D.Dnome, count(*), Sum(Horas)
from PROJETO as P, DEPARTAMENTO as D, TRABALHA_EM as T
where D.Dnumero = P.Dnum and P.Projnumero = T.Pnr and 2 < (select count(Fcpf)
														from TRABALHA_EM, PROJETO
                                                        where Pnr = Projnumero
                                                        group by Pnr)
group by Pnr;
