CREATE VIEW compras AS 
SELECT FN.nomeFuncionario AS Funcionario, CP.tituloLivroCompra AS Titulo, 
	   CP.quantidadeCompra AS Quantidade, CP.precoCompra AS Preço,
	   CP.quantidadeCompra * CP.precoCompra AS Total
FROM Compra CP
INNER JOIN Requisicao RQ
	ON RQ.idRequisicao = CP.Requisicao_idRequisicao
INNER JOIN Funcionario FN
	ON RQ.Funcionario_idFuncionario = FN.idFuncionario
ORDER BY Total DESC;

SELECT * FROM compras;

-- DROP TABLE IF EXISTS products;


