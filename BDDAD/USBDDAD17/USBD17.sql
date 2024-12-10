--FUNCTION USBD17:
CREATE OR REPLACE FUNCTION fncListaComponentesFatores(nomePar Parcela.nomeParcela%TYPE,
                                                      dataInicio Operacao.diaOperacao%TYPE,
                                                      dataFim Operacao.diaOperacao%TYPE)
    RETURN SYS_REFCURSOR IS
    listaFinal SYS_REFCURSOR;

BEGIN
OPEN listaFinal FOR
        WITH OperacoesJuncao AS (
            SELECT DISTINCT nomeParcela, operacaoID
            FROM (
                SELECT OperacaoCultura.nomeParcela, OperacaoCultura.operacaoID
                FROM OperacaoCultura
                INNER JOIN Operacao ON OperacaoCultura.operacaoId = Operacao.operacaoID
                UNION ALL
                SELECT OperacaoParcela.nomeParcela, OperacaoParcela.operacaoID
                FROM OperacaoParcela
                INNER JOIN Operacao ON OperacaoParcela.operacaoId = OperacaoParcela.operacaoID
            )
        ), Fatores AS (
            SELECT OperacoesJuncao.nomeParcela as NOME_PARCELA,
                   Operacao.quantidade as QUANTIDADE_OPERACAO,
     			   AplicacaoFatorProducao.nomeComercialFator as NOME_COMERCIAL,
                   ComposicaoQuimica.notacaoQuimica as NOTACAO,
                   ComposicaoQuimica.quantidade as QUANTIDADE
            FROM OperacoesJuncao
            INNER JOIN Operacao ON OperacoesJuncao.operacaoID = Operacao.operacaoID
            INNER JOIN AplicacaoFatorProducao ON Operacao.operacaoID = AplicacaoFatorProducao.operacaoID
            INNER JOIN FatorProducao ON AplicacaoFatorProducao.nomeComercialFator = FatorProducao.nomeComercialFator
            INNER JOIN ComposicaoQuimica ON FatorProducao.nomeComercialFator = ComposicaoQuimica.nomeComercialFator
            WHERE OperacoesJuncao.nomeParcela = nomePar
            AND Operacao.diaOperacao BETWEEN dataInicio AND dataFim
        )
SELECT fs.NOME_PARCELA,
       fs.NOME_COMERCIAL,
       fs.NOTACAO,
       SUM(fs.QUANTIDADE * fs.QUANTIDADE_OPERACAO / 100) as QUANTIDADE_ELEMENTO
FROM Fatores fs
GROUP BY fs.NOME_PARCELA, fs.NOME_COMERCIAL, fs.NOTACAO
ORDER BY fs.NOME_PARCELA, fs.NOME_COMERCIAL, fs.NOTACAO;

RETURN listaFinal;
END;

------Test Blocks-------

SET SERVEROUTPUT ON;
DECLARE
aplicacaoFatorProducaoInexistente   EXCEPTION;
    listaFinal                          SYS_REFCURSOR;
    nomePar                             Parcela.nomeParcela%type;
	nomeCom                             AplicacaoFatorProducao.nomeComercialFator%type;
    notacao                             ComposicaoQuimica.notacaoQuimica%type;
    qtd                                 Operacao.quantidade%type;
BEGIN
    listaFinal := fncListaComponentesFatores('Campo Novo',TO_DATE('2016-10-05', 'YYYY-MM-DD'), TO_DATE('2023-10-11', 'YYYY-MM-DD'));

FETCH listaFinal INTO nomePar, nomeCom, notacao, qtd;

IF listaFinal%ROWCOUNT = 0 THEN
        RAISE  aplicacaoFatorProducaoInexistente;
ELSE
        DBMS_OUTPUT.PUT_LINE('PARCELA: ' || nomePar);
        DBMS_OUTPUT.PUT_LINE( RPAD('NOME COMERCIAL',28, ' ') || '|  ' || RPAD('NOTACAO',20, ' ') ||  '|  ' || RPAD('QUANTIDADE (kg)',20, ' '));
        LOOP
DBMS_OUTPUT.PUT_LINE(RPAD(nomeCom,28, ' ') || '|  ' || RPAD(notacao,20, ' ') ||  '|  ' || RPAD(qtd,20, ' '));
FETCH listaFinal
    INTO nomePar, nomeCom, notacao, qtd;
EXIT WHEN  listaFinal%NOTFOUND;
END LOOP;
END IF;
CLOSE listaFinal;

EXCEPTION
    WHEN aplicacaoFatorProducaoInexistente THEN
        RAISE_APPLICATION_ERROR(-20001, 'Não existem aplicações de fator produção no período indicado.');
END;