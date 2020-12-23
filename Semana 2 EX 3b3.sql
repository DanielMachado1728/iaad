select Qt_copias
from LIVRO_COPIAS, LIVRO
where LIVRO_COPIAS.Cod_livro = LIVRO.Cod_livro and LIVRO.Titulo = 'Sistemas de banco de dados';
