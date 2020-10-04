select Titulo, Nome_autor
from LIVRO, LIVRO_AUTOR
where LIVRO.Cod_livro = LIVRO_AUTOR.Cod_livro;
