-------Fun��o Principal "registarMonda" USBDD12------
-- Esta fun��o gere o desempenho geral da USBDD12 --
-- Esta fun��o tira proveita das fun��es "verificarSeUnidadeExiste", "verificarSeCulturaExiste", "verificarSeOperacaoExiste" e "novoIdOperacao"
-- Todas estas fun��es chamadas pela fun��o "registarMonda" est�o disponiveis depois da principal, bem como uma breve explica��o do seu funcionamento.

CREATE OR REPLACE PROCEDURE registarMonda(
    tipoOp IN tipoOperacao.tipoOperacao%TYPE,
    qtd IN NUMBER,
    tipoUni IN unidade.tipoUnidade%TYPE,
    diaOp IN DATE,
    nomePar IN parcela.nomeParcela%TYPE,
    vard IN planta.variedade%TYPE,
    diaCult IN CulturaInstalada.diaCultivacao%TYPE)
    
IS
    opID NUMBER(10) := 0;
    flag NUMBER(10) := 0;
    
    culturaNaoExiste EXCEPTION;
    operacaoExiste EXCEPTION;

BEGIN
    IF verificarSeCulturaExiste(diaCult, nomePar, vard) = 0 THEN
        -- D� rollback � transaction se a cultura n�o existe
        RAISE culturaNaoExiste;
    ELSE
        IF verificarSeOperacaoExiste(tipoOp, tipoUni, qtd, diaCult, nomePar, vard) = 1 THEN
            -- D� rollback � transaction se a opera��o j� existe
            RAISE operacaoExiste;
        ELSE
            BEGIN
                -- Confirma se existe a Unidade, sen�o d� insert
                verificarSeUnidadeExiste(tipoUni);

                -- Vai buscar o pr�ximo ID da opera��o
                opID := novoIdOperacao();
            END;
            
            -- Come�a uma transaction com os inserts
            BEGIN
                -- Insert into Operacao
                INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao)
                VALUES (opID, qtd, diaOp, tipoUni, tipoOp);

                -- Insert into OperacaoCultura
                INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta)
                VALUES (opID, diaCult, nomePar, vard);

                -- Commit � transa��o se tudo correr certo sem exce��es
                COMMIT;

                -- Output para feedback
                dbms_output.put_line('Transaction committed successfully.');
            EXCEPTION
                WHEN OTHERS THEN
                    -- Rollback da transa��o se houver erro
                    ROLLBACK;
                    dbms_output.put_line('Rollback due to an error.');
                END;
            END IF;
    END IF;
    
    -- Exce��es
    EXCEPTION
    WHEN culturaNaoExiste THEN
        -- Rollback se a cultura da colheita n�o for real
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta cultura n�o existe.');
    WHEN operacaoExiste THEN
        -- Rollback se a opera��o existir
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta opera��o j� existe.');
    WHEN OTHERS THEN
        -- Rollback para exce��es n�o indicadas
        ROLLBACK;
        dbms_output.put_line('Rollback due to an unexpected error.');
END;


----------------------------------------------------
-- Esta fun��o confirma se j� existe uma opera��o com os mesmos parametros aos enviados.

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

----------------------------------------------------
-- Esta fun��o retorna um Id superior ao ID mais alto na base de dados, ID este valido para a cria��o de um novo registo na tabela "Operacao".

CREATE OR REPLACE FUNCTION novoIdOperacao
    RETURN NUMBER AS
    newIdOperation NUMBER;
BEGIN
    SELECT NVL(MAX(operacaoID), 0) + 1
    INTO newIdOperation
    FROM operacao;
    RETURN newIdOperation;
END;

----------------------------------------------------
-- Esta fun��o verifica se existe uma dada cultura com a primary key correspondente aos parametros passados.

create or replace FUNCTION verificarSeCulturaExiste(
    diaCult IN DATE,
    nomeParcela IN parcela.nomeParcela%TYPE,
    variedade IN culturainstalada.variedadePlanta%TYPE
) RETURN NUMBER IS
    found NUMBER := 0;
BEGIN
    BEGIN
        SELECT COUNT(*) INTO found
        FROM CulturaInstalada
        WHERE diaCultivacao = diaCult AND nomeParcela = nomeParcela AND variedadePlanta = variedade;

    END;
    RETURN found;
END;

----------------------------------------------------
-- Esta fun��o verifica se a unidade pretendedida para uso pelo utilizador existe, caso isto n�o se verifique, � criado um registo correspondente
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

------Test Blocks-------
-- Na sec��o seguinte est�o presentes os blocos an�nimos referentes aos testes criados para as funcionalidades implementadas na US BDD12

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

-- Test registarMonda
SET SERVEROUTPUT ON;
DECLARE
BEGIN
    registarMonda('Monda',20, 'UniType1', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Parcel1', 'Variety1', TO_DATE('2023-01-01', 'YYYY-MM-DD'));
    --Deve dar Raise a excce��o de cultura n�o existir
END;

