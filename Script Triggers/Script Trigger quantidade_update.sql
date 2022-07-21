CREATE FUNCTION quantidade_update() RETURNS 
trigger AS $quantidade_update$
BEGIN 
    UPDATE Exemplar
    SET quantidadeExemplar = quantidadeExemplar - 1
    WHERE Livro_idLivro = NEW.Livro_idLivro;
RETURN NULL;
END;
$quantidade_update$ LANGUAGE plpgsql;

CREATE TRIGGER quantidade_update AFTER INSERT  
ON Emprestimo
FOR EACH ROW
EXECUTE PROCEDURE quantidade_update();