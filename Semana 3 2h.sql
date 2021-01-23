select P.Projnome, D.Dnome, count(*), Sum(Horas)
from PROJETO as P, DEPARTAMENTO as D, TRABALHA_EM as T
where D.Dnumero = P.Dnum and P.Projnumero = T.Pnr
group by Pnr;
