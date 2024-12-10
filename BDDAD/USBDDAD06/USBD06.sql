WITH OperacoesGlobais AS (
    SELECT OperacaoCultura.parcelaID AS "Parcela ID", FatorProducao.nomeTipoFatorProducao AS "Tipo fator", AplicacaoFatorProducao.nomeComercialFator AS "vezesAplicado"
        FROM Operacao
            INNER JOIN OperacaoCultura ON Operacao.OperacaoID LIKE OperacaoCultura.OperacaoID
            INNER JOIN AplicacaoFatorProducao ON Operacao.operacaoID LIKE AplicacaoFatorProducao.operacaoID
            INNER JOIN FatorProducao ON AplicacaoFatorProducao.nomeComercialFator LIKE FatorProducao.nomeComercialFator
            WHERE diaOperacao BETWEEN TO_DATE('01/01/2016', 'DD/MM/YYYY') AND TO_DATE('01/01/2024', 'DD/MM/YYYY')

        UNION ALL
    SELECT OperacaoParcela.parcelaID AS "Parcela ID", FatorProducao.nomeTipoFatorProducao AS "Tipo fator", AplicacaoFatorProducao.nomeComercialFator AS "vezesAplicado"
        FROM Operacao
            INNER JOIN OperacaoParcela ON Operacao.operacaoID LIKE OperacaoParcela.operacaoID
            INNER JOIN AplicacaoFatorProducao ON Operacao.operacaoID LIKE AplicacaoFatorProducao.operacaoID
            INNER JOIN FatorProducao ON AplicacaoFatorProducao.nomeComercialFator LIKE FatorProducao.nomeComercialFator
            WHERE diaOperacao BETWEEN TO_DATE('01/01/2016', 'DD/MM/YYYY') AND TO_DATE('01/01/2024', 'DD/MM/YYYY')
)
SELECT "Parcela ID", "Tipo fator", COUNT("vezesAplicado") AS "Nº De vezes Aplicado" FROM OperacoesGlobais
GROUP BY "Parcela ID", "Tipo fator"
ORDER BY "Parcela ID" ASC