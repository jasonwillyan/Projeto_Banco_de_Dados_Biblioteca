CREATE TABLE funcionario_log(
    idFuncionarioLog SERIAL NOT NULL,
    operaçãoLog VARCHAR(6) NOT NULL, 
    dataLog TIMESTAMP NOT NULL, 
    emprestimoId INTEGER,
    funcionarioId INTEGER NOT NULL,
    PRIMARY KEY(idFuncionarioLog),
    FOREIGN KEY(emprestimoId)
        REFERENCES Emprestimo(idEmprestimo),
    FOREIGN KEY(funcionarioId)
        REFERENCES Funcionario(idFuncionario)
);

CREATE FUNCTION funcionario_auditoria() RETURNS 
trigger AS $funcionario_auditoria$
BEGIN 
    INSERT INTO funcionario_log (operaçãoLog, dataLog, emprestimoId, funcionarioId) SELECT 
    TG_OP, NOW(), a.idEmprestimo, a.Funcionario_idFuncionario 
    FROM Emprestimo a WHERE a.idEmprestimo = NEW.idEmprestimo;
RETURN NULL;
END;
$funcionario_auditoria$ LANGUAGE plpgsql;

CREATE TRIGGER funcionario_auditoria AFTER INSERT OR UPDATE
ON Emprestimo
FOR EACH ROW
EXECUTE PROCEDURE funcionario_auditoria();

