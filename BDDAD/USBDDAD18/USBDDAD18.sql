--USBDDAD18--

CREATE OR REPLACE FUNCTION getListaOperacoes(
    p_diaOperacao_inf IN Operacao.diaOperacao%TYPE,
    p_diaOperacao_sup IN Operacao.diaOperacao%TYPE,
    p_nomeparcela IN OperacaoParcela.nomeParcela%TYPE) RETURN SYS_REFCURSOR
IS
  v_cursor SYS_REFCURSOR;
BEGIN
  OPEN v_cursor FOR
    SELECT cData.nomeParcela, cData.operacaoID, cData.variedadePlanta, op.tipoOperacao, op.diaOperacao
    FROM (
        SELECT nomeParcela, operacaoID, variedadePlanta
        FROM OperacaoCultura
        WHERE nomeParcela = p_nomeparcela

        UNION ALL

        SELECT nomeParcela, operacaoID, NULL AS variedadePlanta
        FROM OperacaoParcela
        WHERE nomeParcela = p_nomeparcela
    ) cData
    INNER JOIN Operacao op ON cData.operacaoID = op.operacaoID 
    WHERE op.diaOperacao BETWEEN p_diaOperacao_inf AND p_diaOperacao_sup
    ORDER BY op.tipoOperacao;

  RETURN v_cursor;
END getListaOperacoes;
/




SET SERVEROUTPUT ON;
DECLARE
  v_result_cursor SYS_REFCURSOR;
  v_operacaoID Operacao.operacaoID%TYPE;
  v_tipoOperacao Operacao.tipoOperacao%TYPE;
  v_nomeParcela OperacaoParcela.nomeParcela%TYPE;
  v_variedadePlanta OperacaoCultura.variedadePlanta%TYPE;
  v_diaOperacao Operacao.diaOperacao%TYPE;
BEGIN


  v_result_cursor := getListaOperacoes(
                      p_diaOperacao_inf => TO_DATE('2023-07-01', 'YYYY-MM-DD'),
                      p_diaOperacao_sup => TO_DATE('2023-10-02', 'YYYY-MM-DD'),
                      p_nomeparcela => 'CAMPO NOVO'
                    );


DBMS_OUTPUT.PUT_LINE('OPERACAOID            |NOMEPARCELA         |TIPOOPERACAO          |DIAOPERACAO          |CULTURA');
  LOOP
    v_variedadePlanta:= ' ';
    FETCH v_result_cursor INTO v_nomeParcela,v_OperacaoID,V_variedadePlanta, v_tipoOperacao, v_diaOperacao;
    EXIT WHEN v_result_cursor%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE( RPAD(v_operacaoID,20, ' ') || '|  ' || (RPAD(v_nomeParcela,20,' ')) || '| ' ||RPAD(v_tipoOperacao,20, ' ') || '|  ' || RPAD(v_diaOperacao,20, ' ') || '|  ' || RPAD(v_variedadePlanta,20, ' '));
  END LOOP;

  CLOSE v_result_cursor;
END;
/

--Bloco anonimo de testes--
--Este bloco testa se os registos retirados da base de dados estão de facto dentro das supostas restrições infrigidas pela função 

SET SERVEROUTPUT ON;
DECLARE
  result NUMBER;
  v_result_cursor SYS_REFCURSOR;
  v_operacaoID Operacao.operacaoID%TYPE;
  v_tipoOperacao Operacao.tipoOperacao%TYPE;
  v_nomeParcela OperacaoParcela.nomeParcela%TYPE;
v_variedadePlanta OperacaoCultura.variedadePlanta%TYPE;
  v_diaOperacao Operacao.diaOperacao%TYPE;
  dataErrada EXCEPTION;
  parcelaErrada EXCEPTION;
BEGIN


  v_result_cursor := getListaOperacoes(
                      p_diaOperacao_inf => TO_DATE('2023-07-01', 'YYYY-MM-DD'),
                      p_diaOperacao_sup => TO_DATE('2023-10-02', 'YYYY-MM-DD'),
                      p_nomeparcela => 'CAMPO GRANDE'
                    );

  LOOP
    FETCH v_result_cursor INTO v_nomeParcela,v_OperacaoID,v_variedadePlanta, v_tipoOperacao, v_diaOperacao;
    EXIT WHEN v_result_cursor%NOTFOUND;

    IF v_diaOperacao NOT BETWEEN TO_DATE('2017-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD') THEN
        RAISE dataErrada;
    END IF;
    IF v_nomeParcela != 'CAMPO GRANDE' THEN
        RAISE parcelaErrada;
    END IF;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('Funcionamento Regular Garantido');

  CLOSE v_result_cursor;
  
  EXCEPTION
    WHEN dataErrada THEN
        RAISE_APPLICATION_ERROR(-20001, 'As datas não estão dentro do limite');
    WHEN parcelaErrada THEN
        RAISE_APPLICATION_ERROR(-20001, 'Nem todos os registos estão na parcela pretendida');
  
END;
/