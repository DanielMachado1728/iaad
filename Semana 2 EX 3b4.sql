select Titulo
from LIVRO, LIVRO_EMPRESTIMO
where Data_emprestimo >= '2020-08-01' and Data_emprestimo <= '2020-11-01' and LIVRO_EMPRESTIMO.Cod_livro = LIVRO.Cod_livro;
