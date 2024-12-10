SELECT nomeComercialFator from AplicacaoFatorProducao, Operacao 
    WHERE Operacao.diaOperacao >= TO_DATE('20-10-2010', 'DD/MM/YYYY') AND Operacao.diaOperacao <= TO_DATE('07-03-2019', 'DD/MM/YYYY') AND AplicacaoFatorProducao.operacaoID = Operacao.operacaoID
    GROUP BY nomeComercialFator
    HAVING count(nomeComercialFator) = ( 
    SELECT MAX(count(nomeComercialFator)) 
    FROM AplicacaoFatorProducao, Operacao
    WHERE Operacao.diaOperacao >= TO_DATE('20-10-2000', 'DD/MM/YYYY') AND Operacao.diaOperacao <= TO_DATE('07-03-2019', 'DD/MM/YYYY') AND AplicacaoFatorProducao.operacaoID = Operacao.operacaoID
    GROUP BY nomeComercialFator 
);