select Titulo
from LIVRO, LIVRO_EMPRESTIMO
where LIVRO_EMPRESTIMO.Cod_livro = LIVRO.Cod_livro and Data_emprestimo >= '2020-08-01' and Data_emprestimo <= '2020-09-01';
