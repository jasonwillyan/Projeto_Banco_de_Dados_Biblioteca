CREATE FUNCTION check_email() RETURNS 
trigger AS $check_email$
BEGIN 
IF NEW.email LIKE '%@%' THEN
    RETURN NEW;
ELSE
    RAISE EXCEPTION 'Email não está no formato correto';
    RETURN NEW;
END IF;
END;
$check_email$ LANGUAGE plpgsql;

CREATE TRIGGER check_email BEFORE INSERT OR UPDATE 
ON Email
FOR EACH ROW
WHEN (pg_trigger_depth() = 0) 
EXECUTE PROCEDURE check_email();