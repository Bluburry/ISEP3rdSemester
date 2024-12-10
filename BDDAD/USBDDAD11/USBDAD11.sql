create or replace function registarSemeadura (
    tipoOp in tipoOperacao.tipoOperacao%type,
    parcelaNome in Parcela.nomeParcela%type, 
    qtdOp in Operacao.quantidade%type,
    qtdCult in culturaInstalada.quantidade%type,
    dataOp date,
    varPlanta in Planta.variedade%type
) 
is 
    opID number := 0;
    flag number := 0;

    parcelaNaoExiste exception;
    plantaNaoExiste exception;
    operacaoExiste exception;

begin
    if verificarSeParcelaExiste(parcelaNome) = 0 THEN
        RAISE parcelaNaoExiste;
    elsif verificarSePlantaExiste(varPlanta) = 0 then
        RAISE plantaNaoExiste;
    elsif verificarSeOperacaoExiste('Semeadura', 'kg', qtdOp, dataOp, parcelaNome, varPlanta) = 1 THEN
        RAISE operacaoExiste;
    else
        BEGIN
            verificarSeUnidadeExiste('ha');
            verificarSeUnidadeExiste('kg');

            opID := novoIdOperacao();
        end;

        BEGIN

            insert into operacao(operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao)
                values(opID, qtdOp, dataOp, 'kg', tipoOp);

            insert into CulturaInstalada(nomeParcela, variedadePlanta, diaCultivacao, quantidade, tipoUnidade)
                values(parcelaNome, varPlanta, dataOp, qtdCult, 'ha');

            INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta)
                VALUES (opID, dataOp, parcelaNome, varPlanta);

            commit;

            dbms_output.put_line('Second transaction committed successfully.');
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                dbms_output.put_line('Rollback due to an error.');
        END;
    END IF;
end if;


EXCEPTION
    WHEN parcelaNaoExiste THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta parcela não existe');
    WHEN plantaNaoExiste THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta planta não existe');
    WHEN operacaoExiste THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Esta opera��o j� existe.');
    WHEN OTHERS THEN
        ROLLBACK;
        dbms_output.put_line('Rollback due to an unexpected error.');
END;
/


create or replace function verificarSeParcelaExiste(
    parNome in Parcela.nomeParcela%type
) return NUMBER
IS
    found number := 0;
begin
    BEGIN
        select count(*) into found
        from Parcela
        where nomeParcela = parNome;
    end;
    return found;
end;
/

create or replace function verificarSePlantaExiste(
    varPlanta in Planta.variedade%type
) return NUMBER
IS
    found number := 0;
begin
    BEGIN
        select count(*) into found
        from Planta
        where variedade = varPlanta;
    end;
    return found;
end;
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

--Test verificarSeOperacaoExiste
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

--Test verificarSeParcelaExiste
SET SERVEROUTPUT ON;

DECLARE
result NUMBER;
BEGIN
	result := verificarSeParcelaExiste('HORTA NOVA');
    dbms_output.put_line('Should return 1: ' || result);

    result := verificarSeParcelaExiste('CAMPO 3');
    dbms_output.put_line('Should return 0: ' || result);
END;
/

--Test verificarSePlantaExiste
SET SERVEROUTPUT ON;

DECLARE
result NUMBER;
BEGIN
	result := verificarSePlantaExiste('BLACK STAR');
    dbms_output.put_line('Should return 1: ' || result);

    result := verificarSeParcelaExiste('TWINKLE STAR');
    dbms_output.put_line('Should return 0: ' || result);
END;
/


set SERVEROUTPUT on;
DECLARE
BEGIN
    registarSemeadura('Semeadura', 'HORTA NOVA', 23, 25, TO_DATE('05/11/2020', 'DD/MM/YYYY'),'TWINKLE START');
    -- raise planta nao existe
    registarSemeadura('Semeadura', 'HORTA 3', 23, 25, TO_DATE('05/11/2020', 'DD/MM/YYYY'),'BLACK STAR');
    -- raise parcela nao existe
end;
/



