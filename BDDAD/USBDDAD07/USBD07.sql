with OPERACOESGLOBAIS as (
    select PARCELA.PARCELAID as "ID da Parcela", OPERACAO.TIPOOPERACAO as "Tipo de Operação"
    from OPERACAO
             inner join OPERACAOPARCELA on OPERACAO.OPERACAOID = OPERACAOPARCELA.OPERACAOID
             inner join PARCELA on OPERACAOPARCELA.PARCELAID = PARCELA.PARCELAID
    where
        DIAOPERACAO between TO_DATE('01/01/2016', 'DD/MM/YYYY') and TO_DATE('31/12/2024', 'DD/MM/YYYY')
    union all
    select OPERACAOCULTURA.PARCELAID as "ID da Parcela", OPERACAO.TIPOOPERACAO as "Tipo de Operação"
    from OPERACAO
             inner join OPERACAOCULTURA ON OPERACAO.OPERACAOID = OPERACAOCULTURA.OPERACAOID
    where
        DIAOPERACAO between TO_DATE('01/01/2016', 'DD/MM/YYYY') and TO_DATE('31/12/2024', 'DD/MM/YYYY')
)
select
    "ID da Parcela",
    "Tipo de Operação",
    count(*) as "Número de Operações"
from
    OPERACOESGLOBAIS
group by "ID da Parcela", "Tipo de Operação"
order by "ID da Parcela", "Tipo de Operação";