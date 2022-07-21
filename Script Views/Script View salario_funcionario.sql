CREATE VIEW salario_funcionario AS
SELECT FN.nomeFuncionario AS Nome,
	   FN.cargoFuncionario AS Cargo,
	   FN.salarioFuncionario AS Salario,
	   FN.salarioFuncionario * 12 AS Salario_anual
FROM Funcionario FN
WHERE salarioFuncionario > 2350;
ORDER BY Salario_anual DESC;

SELECT * FROM salario_funcionario;