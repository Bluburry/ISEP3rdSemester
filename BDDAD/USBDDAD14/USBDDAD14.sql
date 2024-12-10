------Função principal "registarAplicacaoFator" USBDD14------
-- Esta função gere o desempenho geral da USBDD14 --
-- Esta função tira proveita das funções "parcelaExiste", "fatorExiste", "areaPossivel" e "novoIdOperacao"
-- Todas estas funções chamadas pela função "registarAplicacaoFator" estão disponiveis depois da principal, bem como uma breve explicação do seu funcionamento.

CREATE OR REPLACE FUNCTION registarAplicacaoFator (
    qtdFator IN NUMBER,
    diaOp IN DATE,
    fatorProducao IN FatorProducao.nomeComercialFator%TYPE,
    nomeParcela IN Parcela.nomeParcela%TYPE
)
IS
    newID number;
    fatorNaoExiste EXCEPTION;
	parcelaNaoExiste EXCEPTION;
	areaImpossivel EXCEPTION;
BEGIN
    IF parcelaExiste(parcela) = 0 THEN
        RAISE parcelaNaoExiste;
ELSE
        IF fatorExiste(fator) = 0 THEN
        	RAISE fatorNaoExiste;
ELSE
            IF areaPossivel(nomeParcela, qtdArea) = 0 THEN
        		RAISE areaImpossivel;
ELSE
BEGIN
            		newID := getMaxOperacaoID();
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao) VALUES (newID, qtdFator, diaOp, 'kg', 'Fertilização');
INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (newID, nomeParcela);
INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES (fator, newID);
COMMIT;

-- Output para feedback
dbms_output.put_line('Transaction committed successfully.');
EXCEPTION
                    WHEN OTHERS THEN
                        -- Rollback da transação se houver erro
                        ROLLBACK;
                        dbms_output.put_line('Rollback due to an error.');
END;
END IF;
END IF;
END IF;
EXCEPTION
        WHEN fatorNaoExiste THEN
        	ROLLBACK
        	raise_application_error(-20001, 'O fator não existe');
WHEN parcelaNaoExiste THEN
            ROLLBACK
            raise_application_error(-20001, 'A parcela não existe');
WHEN areaImpossivel THEN
            ROLLBACK
            raise_application_error(-20001, 'A area de operação é superior à area de parcela');
WHEN OTHERS THEN
        -- Rollback para exceções não indicadas
        ROLLBACK;
        dbms_output.put_line('Rollback due to an unexpected error.');
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função verifica se o fator de produção aplicado na operação existe.
CREATE OR REPLACE FUNCTION fatorExiste (
    fator varchar
) RETURN boolean
IS
    v_count number;
BEGIN
SELECT count(nomeComercialFator) INTO v_count
FROM FatorProducao
WHERE nomeComercialFator LIKE fator;
IF v_count > 0 THEN
        RETURN 1;
ELSE
        RETURN 0;
END IF;
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função verifica se a parcela, na qual será realizada a operação, existe.
CREATE OR REPLACE FUNCTION parcelaExiste (
    parcelaNome IN Parcela.nomeParcela%TYPE
) RETURN boolean
IS
    v_count number;
BEGIN
SELECT count(nomeParcela) INTO v_count
FROM Parcela
WHERE nomeParcela LIKE parcelaNome;
IF v_count > 0 THEN
        RETURN 1;
ELSE
        RETURN 0;
END IF;
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função verifica se a área da operação é impossivel, tendo em consideração a área da parcela na qual esta operação terá efeito.
CREATE OR REPLACE FUNCTION areaPossivel (
    parcelaNome IN Parcela.nomeParcela%TYPE,
	qtdArea IN number
) RETURN boolean
IS
    v_count number;
BEGIN
SELECT areaParcela INTO v_count
FROM Parcela
WHERE nomeParcela LIKE parcelaNome;
IF v_count > qtdArea THEN
        RETURN 1;
ELSE
        RETURN 0;
END IF;
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função tem como objetivo pegar no maior ID na tabela operação e retornar o número seguinte.
CREATE OR REPLACE FUNCTION getNewOperacaoID
    RETURN number
IS
    v_count number;
BEGIN
SELECT MAX(operacaoID) INTO v_count
FROM Operacao;
RETURN (v_count+1);
END;

--------------------------------------------------------Test Blocks--------------------------------------------------------
-- Na secção seguinte estão presentes os blocos anônimos referentes aos testes criados para as funcionalidades implementadas na US BDD12

-- Test fatorExiste --
SET SERVEROUTPUT ON

DECLARE
result NUMBER
BEGIN
	result := fatorExiste('Sonata');
    dbms_output.put_line('Should return 1: ' || result);

    result := fatorExiste('EPSO');
    dbms_output.put_line('Should return 0: ' || result);
END;

-- Test parcelaExiste --
SET SERVEROUTPUT ON

DECLARE
result NUMBER
BEGIN
	result := parcelaExiste('CAMPO GRANDE');
    dbms_output.put_line('Should return 1: ' || result);

    result := parcelaExiste('CAMPO ENORME');
    dbms_output.put_line('Should return 0: ' || result);
END;

-- Test areaPossivel --
SET SERVEROUTPUT ON

DECLARE
result NUMBER
BEGIN
	result := areaImpossivel('CAMPO GRANDE', 2);
    dbms_output.put_line('Should return 1: ' || result);

    result := areaImpossivel('CAMPO GRANDE', 4);
    dbms_output.put_line('Should return 0: ' || result);
END;

-- Test getNewOperacaoID --
SET SERVEROUTPUT ON

DECLARE
result NUMBER
BEGIN
    result := getNewOperacaoID();
    dbms_output.put_line('New ID: ' || result);
    dbms_output.put_line('Max ID: ' || SELECT MAX(OperacaoID) FROM Operacao);
END;
