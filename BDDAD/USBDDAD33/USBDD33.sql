
CREATE OR REPLACE FUNCTION getMaxMinRega (v_year IN NUMBER)
RETURN SYS_REFCURSOR
IS
    v_cursor SYS_REFCURSOR;
    maxMins NUMBER(10) := 0;
    flag NUMBER(10):=0;
    noData EXCEPTION;
BEGIN
    
    SELECT COUNT(*)
    INTO flag
    FROM Operacao
    INNER JOIN OperacaoCultura ON OperacaoCultura.operacaoID = Operacao.operacaoID
    WHERE UPPER(tipoOperacao) = 'REGA' AND EXTRACT(YEAR FROM diaOperacao) = v_year AND tipoUnidade = 'min';
    
    IF flag =0 THEN
    RAISE noData;
    END IF;

    SELECT MAX(SUM(quantidade))
    INTO maxMins
    FROM Operacao
    INNER JOIN OperacaoCultura ON OperacaoCultura.operacaoID = Operacao.operacaoID
    WHERE UPPER(tipoOperacao) = 'REGA' AND EXTRACT(YEAR FROM diaOperacao) = v_year AND tipoUnidade = 'min'
    GROUP BY OperacaoCultura.diaCultivacao, OperacaoCultura.nomeParcela, OperacaoCultura.variedadePlanta, OperacaoCultura.nomeComumPlanta;

    OPEN v_cursor FOR
        SELECT SUM(op.quantidade), OperacaoCultura.nomeParcela, OperacaoCultura.variedadePlanta, OperacaoCultura.nomeComumPlanta, OperacaoCultura.diaCultivacao
        FROM OperacaoCultura
        INNER JOIN Operacao op ON OperacaoCultura.operacaoID = op.operacaoID
        WHERE op.operacaoID IN (
            SELECT operacaoID
            FROM Operacao
            WHERE UPPER(tipoOperacao) = 'REGA' OR UPPER(tipoOperacao) = 'FERTIRREGA'
        ) AND EXTRACT(YEAR FROM diaOperacao) = v_year AND tipoUnidade = 'min'
        GROUP BY OperacaoCultura.diaCultivacao, OperacaoCultura.nomeParcela, OperacaoCultura.variedadePlanta, OperacaoCultura.nomeComumPlanta
        HAVING SUM(op.quantidade) = maxMins;

    RETURN v_cursor;
    
    EXCEPTION
        WHEN noData THEN
            RAISE_APPLICATION_ERROR(-20001, 'Não existem dados relevantes para este ano civil.');
END getMaxMinRega;
/



DECLARE
    my_cursor SYS_REFCURSOR;
    v_year NUMBER:= 2023;
    quantidade Operacao.quantidade%TYPE;
    nomeParcela OperacaoCultura.nomeParcela%TYPE;
    variedadePlanta OperacaoCultura.variedadePlanta%TYPE;
    nomeComumPlanta OperacaoCultura.nomeComumPlanta%TYPE;
    diaCultivacao OperacaoCultura.diaCultivacao%TYPE;
BEGIN
    -- Call the function
    my_cursor := getMaxMinRega(v_year);

    -- Fetch and print the results
    LOOP
        FETCH my_cursor INTO quantidade, nomeParcela, variedadePlanta, nomeComumPlanta, diaCultivacao;
        EXIT WHEN my_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Quantidade: ' || quantidade || ', Nome Parcela: ' || nomeParcela || ', Variedade Planta: ' || variedadePlanta || ', Nome Comum Planta: ' || nomeComumPlanta || ', Dia da Cultivação: ' || diaCultivacao);
    END LOOP;

    -- Close the cursor
    CLOSE my_cursor;
END;
/