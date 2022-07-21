CREATE OR REPLACE FUNCTION funcionario_auditoria_delete() RETURNS 
trigger AS $funcionario_auditoria_delete$
BEGIN 
    INSERT INTO funcionario_log (operaçãoLog, dataLog, funcionarioId) SELECT 
    TG_OP, NOW(), a.Funcionario_idFuncionario 
    FROM Emprestimo a WHERE a.idEmprestimo = OLD.idEmprestimo;
RETURN OLD;
END;
$funcionario_auditoria_delete$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER funcionario_auditoria_delete BEFORE DELETE
ON Emprestimo
FOR EACH ROW
EXECUTE PROCEDURE funcionario_auditoria_delete();