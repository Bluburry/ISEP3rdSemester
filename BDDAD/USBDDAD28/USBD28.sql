-- Trigger Impedir_Delete_Operação --
create or replace NONEDITIONABLE TRIGGER impedir_delete_operacao
BEFORE DELETE ON Operacao
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Não é possível excluir uma Operação');
END impedir_delete_operacao;
/
-- Trigger Impedir_Delete_OperaçãoCultura --
create or replace NONEDITIONABLE TRIGGER impedir_delete_operacaoCultura
BEFORE DELETE ON OperacaoCultura
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Não é possível excluir uma Operação');
END impedir_delete_operacaoCultura;
/
-- Trigger Impedir_Delete_OperaçãoFertirrega --
create or replace NONEDITIONABLE TRIGGER impedir_delete_operacaoFertirrega
BEFORE DELETE ON Fertirrega
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Não é possível excluir uma Operação');
END impedir_delete_operacaoFertirrega;
/
-- Trigger Impedir_Delete_OperaçãoParcela --
create or replace NONEDITIONABLE TRIGGER impedir_delete_operacaoParcela
BEFORE DELETE ON OperacaoParcela
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Não é possível excluir uma Operação');
END impedir_delete_operacaoParcela;
/

-- Blocos Anónimos --
DECLARE
op_id NUMBER := 266;
BEGIN
DELETE FROM Fertirrega
WHERE operacaoID = op_id;
END;
/
---------------------
BEGIN
DELETE FROM Fertirrega
WHERE operacaoID = 266 AND operacaoID = 267 AND operacaoID = 268;
END;
/