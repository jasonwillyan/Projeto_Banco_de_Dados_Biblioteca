CREATE MATERIALIZED VIEW emprestimos AS
SELECT CT.nomeCliente AS Nome,
	   CT.cpfCliente AS CPF,
	   LV.tituloLivro AS Livro,
	   EP.dataEmprestimo AS Data_Emprestimo,
	   EP.dataDevolucao AS Data_Devolução
FROM Cliente CT
INNER JOIN Emprestimo EP
	ON CT.idCliente = EP.Cliente_idCliente
INNER JOIN Livro LV
	ON LV.idLivro = EP.Livro_idLivro
WITH DATA;

SELECT * FROM emprestimos;