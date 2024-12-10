-- A implementação da User Story foi parcialmente feita com a geração automática do SCHEMA a partir do Visual Paradigm, o Trigger que segue é um extra que impede alterações no instante de criação--

CREATE OR REPLACE TRIGGER prevent_dataregisto_dml
BEFORE INSERT OR UPDATE OF dataRegisto ON Operacao
FOR EACH ROW
BEGIN
    -- Raise an exception if an attempt is made to modify the dataRegisto column
    IF UPDATING AND :OLD.dataRegisto != :NEW.dataRegisto THEN
        RAISE_APPLICATION_ERROR(-20001, 'Modification of dataRegisto is not allowed');
    END IF;

END;
/



SET SERVEROUTPUT ON;
DECLARE
    datePost DATE;
BEGIN
    BEGIN
        UPDATE Operacao
        SET dataRegisto = TO_DATE('21/01/2022', 'DD/MM/YYYY')
        WHERE operacaoID = 10;
        
        COMMIT;  -- Commit the changes after a successful update

        SELECT dataRegisto INTO datePost FROM OPERACAO WHERE operacaoID = 10;
        DBMS_OUTPUT.PUT_LINE('Data de Registo = ' || TO_CHAR(datePost, 'DD/MM/YYYY'));

    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END;
END;
/