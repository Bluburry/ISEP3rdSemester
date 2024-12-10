CREATE OR REPLACE TRIGGER idPlacer
    BEFORE INSERT
    ON Operacao
    FOR EACH ROW
DECLARE
    newID number;
BEGIN
    SELECT MAX(operacaoID) INTO newID FROM operacao;
    IF newID IS NULL THEN
            :NEW.operacaoID := 1;
    ELSE
            :NEW.operacaoID := newID+1;
    END IF;
END;