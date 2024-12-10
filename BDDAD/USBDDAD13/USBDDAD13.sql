-------Função Principal "registar Colheita" USBDD13------
-- Esta função gere o desempenho geral da USBDD13 --
-- Esta função tira proveita das funções "verificarSeUnidadeExiste", "verificarSeCulturaExiste", "verificarSeOperacaoExiste" e "novoIdOperacao"
-- Todas estas funções chamadas pela função "registar Colheita" estão disponiveis em baixo bem como uma breve explicação do seu funcionamento.


create or replace PROCEDURE registarColheita(
    p_quantidade IN Operacao.quantidade%TYPE,
    p_diaOperacao IN Operacao.diaOperacao%TYPE,
    p_tipoUnidade IN Unidade.tipoUnidade%TYPE,
    p_tipoOperacao IN TipoOperacao.TipoOperacao%TYPE,
    p_nomeParcela IN Parcela.nomeParcela%TYPE,
    p_variedadePlanta IN Planta.variedade%TYPE,
    p_diaCultivacao IN CulturaInstalada.diaCultivacao%TYPE
)
IS
    opID NUMBER(10) := 0;
    flag NUMBER(10) := 0;


    culturaFalsa EXCEPTION;
    operacaoExiste EXCEPTION;

BEGIN
    -- Start the transaction
    BEGIN
        -- Check and insert into Unidade if necessary
        verificarSeUnidadeExiste(p_tipoUnidade);

        -- Get the next operacaoID
        opID := novoIdOperacao();
    END;

    -- Check if the culture exists
    flag := verificarSeCulturaExiste(p_diaCultivacao, p_nomeParcela, p_variedadePlanta);

    IF flag = 0 THEN
        -- Rollback the transaction if the culture doesn't exist
        RAISE culturaFalsa;
    END IF;

    flag := verificarSeOperacaoExiste(p_tipoOperacao, p_tipoUnidade, p_quantidade, p_diaCultivacao, p_nomeParcela, p_variedadePlanta);

    IF flag = 1 THEN
        -- Rollback the transaction if the operation doesn't exist
        RAISE operacaoExiste;
    ELSE
        -- Commit the transaction if the culture and operation exist
        COMMIT;

        -- Output for testing
        dbms_output.put_line('Transaction committed successfully.');

        -- Start a new transaction for the actual inserts
        BEGIN
            -- Insert into Operacao
            INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao)
            VALUES (opID, p_quantidade, p_diaOperacao, p_tipoUnidade, p_tipoOperacao);

            -- Insert into OperacaoCultura
            INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta)
            VALUES (opID, p_diaCultivacao, p_nomeParcela, p_variedadePlanta);

            -- Commit à transação se tudo correr certo sem exceções
            COMMIT;

            -- Output for testing
            dbms_output.put_line('Second transaction committed successfully.');
        EXCEPTION
            WHEN OTHERS THEN
                -- Rollback da segunda transação se houver erro
                ROLLBACK;
                dbms_output.put_line('Rollback due to an error.');
        END;
    END IF;

EXCEPTION
    WHEN culturaFalsa THEN
        -- Rollback se a cultura da colheita não for real
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta cultura não existe');
    WHEN operacaoExiste THEN
        -- Rollback se a operação existir
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta operação já existe');
    WHEN OTHERS THEN
        -- Rollback para exceções não indicadas
        ROLLBACK;
        dbms_output.put_line('Rollback due to an unexpected error.');
END;
/



create or replace FUNCTION verificarSeOperacaoExiste(
    desigOp IN tipoOperacao.tipoOperacao%TYPE,
    desigUnidade IN Unidade.tipoUnidade%TYPE,
    qtd IN NUMBER,
    dataOp IN DATE,
    nomeParcela IN parcela.nomeParcela%TYPE,
    variedade IN culturainstalada.variedadePlanta%TYPE
) RETURN NUMBER IS
    found NUMBER := 0;
BEGIN
    BEGIN
        SELECT COUNT(*) INTO found
        FROM OPERACAO op
                 INNER JOIN operacaoCultura cul ON op.OperacaoID = cul.OperacaoID
        WHERE op.tipoOperacao = desigOp
          AND op.tipoUnidade = desigUnidade
          AND op.quantidade = qtd
          AND cul.diaCultivacao = dataOp
          AND cul.variedadePlanta = variedadePlanta
          AND cul.nomeParcela = nomeParcela;
    EXCEPTION
        WHEN OTHERS THEN
            found := 0;
    END;
    RETURN found;
END;
/


----------------------------------------------------
-- Esta função retorna um Id superior ao ID mais alto na base de dados, ID este valido para a criação de um novo registo na tabela "Operacao".

CREATE OR REPLACE FUNCTION novoIdOperacao
    RETURN NUMBER AS
    newIdOperation NUMBER;
BEGIN
    SELECT NVL(MAX(operacaoID), 0) + 1
    INTO newIdOperation
    FROM operacao;
    RETURN newIdOperation;
END;
/

----------------------------------------------------
-- Esta função verifica se existe uma dada cultura com a primary key correspondente aos parametros passados.

create or replace FUNCTION verificarSeCulturaExiste(
    dataOp IN DATE,
    nomeParcela IN parcela.nomeParcela%TYPE,
    variedade IN culturainstalada.variedadePlanta%TYPE
) RETURN NUMBER IS
    found NUMBER := 0;
BEGIN
    BEGIN
        SELECT COUNT(*) INTO found
        FROM CulturaInstalada
        WHERE diaCultivacao = dataOp AND nomeParcela = nomeParcela AND variedadePlanta = variedade;

    END;
    RETURN found;
END;
/


----------------------------------------------------
-- Esta função verifica se a unidade pretendedida para uso pelo utilizador existe, caso isto não se verifique, é criado um registo correspondente
-- a essa unidade na tabela "Unidade" a partir do parametro passado

create or replace PROCEDURE verificarSeUnidadeExiste(
    P_TIPOUNIDADE IN Unidade.tipoUnidade%TYPE
)IS
BEGIN
    DECLARE
    flag NUMBER(10) := 0;
    BEGIN
        SELECT COUNT(tipoUnidade) INTO flag FROM Unidade WHERE tipoUnidade = p_tipoUnidade;

        IF flag = 0 THEN
            INSERT INTO Unidade (tipoUnidade) VALUES (p_tipoUnidade);
        END IF;
    END;
END;
/


------Test Blocks-------
-- Na secção seguinte estão presentes os blocos anônimos referentes aos testes criados para as funcionalidades implementadas na US BDD18

-- Test verificarSeOperacaoExiste 

SET SERVEROUTPUT ON;
DECLARE
    result NUMBER;
BEGIN
    result := verificarSeOperacaoExiste('Colheita','kg', 600, TO_DATE('02/06/2020', 'DD/MM/YYYY'),'NELSON HYBRID', 'HORTA NOVA');
    dbms_output.put_line('Should return 1: ' || result);
    
    result := verificarSeOperacaoExiste('Colheitaa','kg', 600, TO_DATE('02/06/2020', 'DD/MM/YYYY'),'NELSON HYBRID', 'HORTA NOVA');
    dbms_output.put_line('Should return 0: ' || result);
END;
/

-- Test novoIdOperacao
SET SERVEROUTPUT ON;
DECLARE
    result NUMBER;
    maxID NUMBER;
BEGIN
    SELECT MAX(OperacaoID) INTO maxID FROM Operacao;
    result := novoIdOperacao();
    dbms_output.put_line('New Operation ID: ' || result);
    dbms_output.put_line('Previous max ID: ' || maxID);
END;
/

-- Test verificarSeCulturaExiste
SET SERVEROUTPUT ON;
DECLARE
    result NUMBER;
BEGIN
    result := verificarSeCulturaExiste(TO_DATE('06/10/2016', 'DD/MM/YYYY'), 'CAMPO GRANDE', 'GALEGA');
    dbms_output.put_line('Should return 1: ' || result);
    result := verificarSeCulturaExiste(TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Parcel1', 'Variety1');
    dbms_output.put_line('Should return 0: ' || result);
END;
/

-- Test registarColheita
SET SERVEROUTPUT ON;
DECLARE
BEGIN
    registarColheita(20, TO_DATE('06/10/2016', 'DD/MM/YYYY'),'kg','Colheita', 'CAMPO GRANDE', 'GALEGA', TO_DATE('06/10/2071', 'DD/MM/YYYY'));
    --Deve dar Raise a excceção de cultura não existir
    registarColheita(20, TO_DATE('06/10/2016', 'DD/MM/YYYY'),'kg', 'Colheita' 'CAMPO GRANDE', 'GALEGAa', TO_DATE('06/10/2016', 'DD/MM/YYYY'));
    --Deve dar Raise a excceção de cultura não existir
    registarColheita(20, TO_DATE('06/10/2016', 'DD/MM/YYYY'),'kg', 'Colheita' 'CAMPO Gasd', 'GALEGA', TO_DATE('06/10/2016', 'DD/MM/YYYY'));
    --Deve dar Raise a excceção de cultura não existir
END;
/
