------Função principal "getAplicacoesFator" USBDD19------
-- Esta função gere o desempenho geral da USBDD19 --

CREATE OR REPLACE FUNCTION getAplicacoesFator(
    p_diaOperacao_inf IN Operacao.diaOperacao%TYPE,
    p_diaOperacao_sup IN Operacao.diaOperacao%TYPE
) RETURN SYS_REFCURSOR
IS

  v_cursor SYS_REFCURSOR;
BEGIN
OPEN v_cursor FOR
SELECT op.diaOperacao, aplic.nomeComercialFator, operacaoInfo.nomeParcela, UPPER(Planta.nomeComumPlanta), operacaoInfo.variedadePlanta
FROM (
         SELECT operacaoID, diaCultivacao, nomeParcela, variedadePlanta
         FROM OperacaoCultura

         UNION

         SELECT operacaoID, NULL AS diaCultivacao, nomeParcela, 'SEM CULTURA' AS variedadePlanta
         FROM OperacaoParcela
     ) operacaoInfo
         INNER JOIN Operacao op ON operacaoInfo.operacaoID = op.operacaoID
         INNER JOIN AplicacaoFatorProducao aplic ON operacaoInfo.operacaoID = aplic.operacaoID
         INNER JOIN Planta ON Planta.variedade = operacaoInfo.variedadePlanta
WHERE op.diaOperacao BETWEEN p_diaOperacao_inf AND p_diaOperacao_sup;
RETURN v_cursor;
END getAplicacoesFator;

SET SERVEROUTPUT ON;
DECLARE
v_result_cursor SYS_REFCURSOR;
  v_diaOperacao Operacao.diaOperacao%TYPE;
  v_nomeComercialFator AplicacaoFatorProducao.nomeComercialFator%TYPE;
  v_nomeParcela OperacaoParcela.nomeParcela%TYPE;
  v_nomeComumPlanta Planta.nomeComumPlanta%TYPE;
  v_variedadePlanta OperacaoCultura.variedadePlanta%TYPE;
BEGIN
v_result_cursor := getAplicacoesFator(
                  p_diaOperacao_inf => TO_DATE('2017-01-01', 'YYYY-MM-DD'),
                  p_diaOperacao_sup => TO_DATE('2023-12-31', 'YYYY-MM-DD')
                );

DBMS_OUTPUT.PUT_LINE( RPAD('Dia da Operacao',20, ' ') || '|  ' ||RPAD('Fator Producao',25, ' ') || '|  ' || RPAD('Parcela',20, ' ') || '|  ' || RPAD('Cultura',20, ' '));
  LOOP
FETCH v_result_cursor INTO v_diaOperacao,v_nomeComercialFator, v_nomeParcela, v_nomeComumPlanta, v_variedadePlanta;
    EXIT WHEN v_result_cursor%NOTFOUND;

	IF v_variedadePlanta LIKE 'SEM CULTURA' THEN
        DBMS_OUTPUT.PUT_LINE( RPAD(v_diaOperacao,20, ' ') || '|  ' ||RPAD(v_nomeComercialFator,25, ' ') || '|  ' || RPAD(v_nomeParcela,20, ' ') || '|  ' || RPAD(v_variedadePlanta,20, ' '));
ELSE
        DBMS_OUTPUT.PUT_LINE( RPAD(v_diaOperacao,20, ' ') || '|  ' ||RPAD(v_nomeComercialFator,25, ' ') || '|  ' || RPAD(v_nomeParcela,20, ' ') || '|  ' || v_nomeComumPlanta || ' ' || v_variedadePlanta);
END IF;
END LOOP;

CLOSE v_result_cursor;
END;

--Bloco anonimo de testes--
--Este bloco testa se os registos retirados da base de dados estão de facto dentro das supostas restrições infrigidas pela função

SET SERVEROUTPUT ON;
DECLARE
result NUMBER;
  v_result_cursor SYS_REFCURSOR;
  v_diaOperacao Operacao.diaOperacao%TYPE;
  v_nomeComercialFator AplicacaoFatorProducao.nomeComercialFator%TYPE;
  v_nomeParcela OperacaoParcela.nomeParcela%TYPE;
  v_nomeComumPlanta Planta.nomeComumPlanta%TYPE;
  v_variedadePlanta OperacaoCultura.variedadePlanta%TYPE;
  dataErrada EXCEPTION;
BEGIN
  v_result_cursor := getAplicacoesFator(
                      p_diaOperacao_inf => TO_DATE('2017-01-01', 'YYYY-MM-DD'),
                      p_diaOperacao_sup => TO_DATE('2023-12-31', 'YYYY-MM-DD')
                    );

  LOOP
FETCH v_result_cursor INTO v_diaOperacao,v_nomeComercialFator, v_nomeParcela, v_nomeComumPlanta, v_variedadePlanta;
    EXIT WHEN v_result_cursor%NOTFOUND;

    IF v_diaOperacao NOT BETWEEN TO_DATE('2017-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD') THEN
        RAISE dataErrada;
END IF;
END LOOP;
  DBMS_OUTPUT.PUT_LINE('Funcionamento Regular');

CLOSE v_result_cursor;

EXCEPTION
    WHEN dataErrada THEN
        RAISE_APPLICATION_ERROR(-20001, 'As datas não estão dentro do limite');
END;
