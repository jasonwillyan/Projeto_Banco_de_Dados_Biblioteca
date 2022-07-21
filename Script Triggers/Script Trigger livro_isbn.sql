CREATE FUNCTION livro_isbn() RETURNS 
trigger AS $livro_isbn$
BEGIN 
IF NEW.ISBN IS NULL OR NEW.ISBN = '' THEN
    RAISE EXCEPTION 'Necessário fornecer o código ISBN para o livro %', NEW.tituloLivro;
END IF;
RETURN NEW;
END;
$livro_isbn$ LANGUAGE plpgsql;

CREATE TRIGGER livro_isbn BEFORE INSERT
ON Livro
FOR EACH ROW
EXECUTE PROCEDURE livro_isbn();
