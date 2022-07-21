CREATE MATERIALIZED VIEW livro_genero_suspense AS
SELECT LV.tituloLivro AS Titulo,
	   LV.statusLivro AS Status,
	   EX.generoExemplar AS Genero
FROM Livro LV
INNER JOIN Exemplar EX
	ON LV.idLivro = EX.Livro_idLivro
WHERE EX.generoExemplar LIKE '%Suspense%'
WITH NO DATA;

REFRESH MATERIALIZED VIEW livro_genero_suspense;

SELECT * FROM livro_genero_suspense;

-- especifica se a visualização materializada deve ou não ser preenchida no momento da criação. 
-- Caso contrário, a visualização materializada será sinalizada como não varrível e não poderá ser consultada até 
-- que REFRESH MATERIALIZED VIEWseja usada.