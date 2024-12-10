# Requesitos Adicionais Não Representados No Modelo Relacional

### 1- Uma cultura não pode ter 2 operações de plantação na mesma parcela, no mesmo dia
### 2- Qualquer operação listada em "OperacaoParcela" ou "OperacaoCultura"não pode aparecer na outra tabela
### 3- Uma Operação não pode ser registada sobre uma parcela ou cultura cujo registo de instalação seja posterior à operação
### 4- Para operações que só mencionam nome comum de uma cultura deve ser considerado todas as culturas instaladas, na parcela em questão, que contenham o nome comum.