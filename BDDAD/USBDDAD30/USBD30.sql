---------- Função Auxiliar VerificarSeOperaçãoExisteComID ----------
create or replace NONEDITIONABLE FUNCTION verificarSeOperacaoExisteComID(
    operacao_id INT
) RETURN INT AS
    operacao_count INT;

BEGIN
    -- Verificar se a Operação existe
SELECT COUNT(*)
    INTO operacao_count
    FROM Operacao
    WHERE OperacaoID = operacao_id;

RETURN operacao_count;

EXCEPTION
    WHEN OTHERS THEN
        -- Em caso de erro:
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM); -- Escreve a mensagem do erro.
        RETURN 1; -- Retorna 1
END verificarSeOperacaoExisteComID;
/

---------- Função para VerificarDependenciasOperacao ----------
CREATE OR REPLACE FUNCTION verificarDependenciasOperacao(
    operacao_id INT
) RETURN INT AS
    contagem_dependencias INT;

BEGIN
    -- Verificar se a operação tem dependências específicas
SELECT COUNT(*)
    INTO contagem_dependencias
    FROM OperacaoParcela op
    WHERE op.operacaoID = operacao_id
    AND op.nomeParcela IN ('Plantação', 'Sementeira', 'Semeadura', 'Incorporação no Solo')
    AND EXISTS (
        SELECT *
        FROM OperacaoParcela op2
        WHERE op2.nomeParcela = op.nomeParcela
          AND op2.operacaoID <> op.operacaoID
    );

RETURN contagem_dependencias;

EXCEPTION
    WHEN OTHERS THEN
        -- Em caso de erro:
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM); -- Escreve a mensagem do erro.
        RETURN 1; -- Retorna 1
END verificarDependenciasOperacao;
/

---------- Função para verificarPossibilidadeDeAnulação ----------
CREATE OR REPLACE FUNCTION verificarPossibilidadeDeAnulacao(
    operacao_id INT
) RETURN INT AS
    dia_limite DATE;
BEGIN
    -- Calcular a data limite para anulação (diaOperacao + 3 dias)
SELECT TO_DATE(diaOperacao + 3, 'DD/MM/YYYY')
    INTO dia_limite
    FROM Operacao
    WHERE OperacaoID = operacao_id;

-- Comparar com a data atual
    IF SYSDATE > dia_limite THEN
        RETURN 0; -- Se a data limite já passou, retorna 0
    ELSE
        RETURN 1; -- Se a data limite não passou, retorna 1
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        -- Em caso de erro:
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM); -- Escreve a mensagem do erro.
    RETURN 1; -- Retorna 1
END verificarPossibilidadeDeAnulacao;
/

---------- Procedure AnularOperacao ----------
create or replace NONEDITIONABLE PROCEDURE anularOperacao(
    operacao_id INT
) AS
    estado_anulado VARCHAR2(50) := 'Anulado';

BEGIN
    -- Se a Operação existir o valor será 1. Caso contrário, será 0.
    IF verificarSeOperacaoExisteComID(operacao_id) > 0 THEN
        IF verificarDependenciasOperacao(operacao_id) = 0 THEN
            IF verificarPossibilidadeDeAnulacao(operacao_id) = 0 THEN
                UPDATE Operacao
                SET nomeEstadoOperacao = estado_anulado
                WHERE OperacaoID = operacao_id;
                COMMIT; -- Confirmar a transação
                DBMS_OUTPUT.PUT_LINE('Operação anulada com sucesso.');
            ELSE
                ROLLBACK;
                -- A data atual tiver excedido a data da Operação por 3 dias, levanta uma exceção
                RAISE_APPLICATION_ERROR(-20001, 'Data da Operação já excedeu os 3 dias limite para ser possível a anulação desta mesma.');
            END IF;
        ELSE
            ROLLBACK;
            -- Se a Operação tiver dependências, levanta uma exceção
            RAISE_APPLICATION_ERROR(-20001, 'Operação com dependências extra, não podendo ser anulada.');
        END IF;
    ELSE
        ROLLBACK;
        -- Se a Operação não existe, levanta uma exceção
        RAISE_APPLICATION_ERROR(-20001, 'Operação não encontrada.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        -- Em caso de erro:
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM); -- Escreve a mensagem do erro.
END anularOperacao;
/

---------- Bloco Anónimo ----------
SET SERVEROUTPUT ON;
BEGIN
    anularOperacao(1);
END;
/
