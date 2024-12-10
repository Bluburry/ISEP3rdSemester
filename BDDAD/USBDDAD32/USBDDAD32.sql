------Função principal "registarRega" USBDD32------
-- Esta função gere o desempenho geral da USBDD32 --
-- Esta função tira proveita das funções "nenhumaCultura", "sectorNaoExiste", "quantidadeCultura" e "getNewOperacaoID"
-- Todas estas funções chamadas pela função "registarRega" estão disponiveis depois da principal, bem como uma breve explicação do seu funcionamento.
CREATE OR REPLACE PROCEDURE registarRega (
    tempo IN NUMBER,
    diaHoraOp IN DATE,
    tipoRega IN TipoOperacao.tipoOperacao%TYPE,
    idMix IN MixFertirrega.idMix%TYPE DEFAULT 0,
    sectorID IN SectorRega.sectorID%TYPE
)
IS
  	v_result_cursor SYS_REFCURSOR;
	v_dia_cultivacao OperacaoCultura.diaCultivacao%TYPE;
    v_nome_parcela OperacaoCultura.nomeParcela%TYPE;
    v_variedade_planta OperacaoCultura.variedadePlanta%TYPE;
    v_nome_comum OperacaoCultura.nomeComumPlanta%TYPE;
    newID number;
    sector EXCEPTION;
    mistura EXCEPTION;
	cultura EXCEPTION;
BEGIN
    IF sectorNaoExiste(sectorID) = 0 THEN
        RAISE sector;
ELSE
        IF nenhumaCultura(sectorID) = 0 THEN
        	RAISE cultura;
ELSE
            IF tipoRega = 'Fertirrega' AND idMix = 0 THEN
            	RAISE mistura;
ELSE
BEGIN
                    v_result_cursor := quantidadeCulturas(sectorID);
                    LOOP
FETCH v_result_cursor INTO v_nome_parcela, v_variedade_planta, v_dia_cultivacao, v_nome_comum;
                        EXIT WHEN v_result_cursor%NOTFOUND;

                        newID := getNewOperacaoID();
INSERT INTO Operacao (quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (tempo, diaHoraOp, 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, nomeComumPlanta, diaCultivacao)
VALUES (newID, v_nome_parcela, v_variedade_planta, v_nome_comum, v_dia_cultivacao);
IF tipoRega = 'Fertirrega' THEN
                            INSERT INTO Fertirrega (operacaoID, idMix) VALUES (newID, idMix);
END IF;
END LOOP;
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
        WHEN sector THEN
            ROLLBACK;
            raise_application_error(-20001, 'O sector não existe');
WHEN cultura THEN
            ROLLBACK;
            raise_application_error(-20001, 'O sector não tem culturas');
WHEN mistura THEN
            ROLLBACK;
            raise_application_error(-20001, 'Não foi selecionado mistura para a fertirrega');
WHEN OTHERS THEN
            -- Rollback para exceções não indicadas
            ROLLBACK;
            dbms_output.put_line('Rollback due to an unexpected error.');
END;


----------------------------------------------------------------------------------------------------------------
-- Esta função verifica se o sector existe.
CREATE OR REPLACE FUNCTION sectorNaoExiste (
    ID IN SectorRega.sectorID%TYPE
) RETURN number
IS
    v_count number;
BEGIN
SELECT count(sectorID) INTO v_count
FROM SectorRega
WHERE sectorID LIKE ID;
IF v_count > 0 THEN
            RETURN 1;
ELSE
            RETURN 0;
END IF;
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função verifica se existem culturas com o sector selecionado.
CREATE OR REPLACE FUNCTION nenhumaCultura (
    ID IN SectorRega.sectorID%TYPE
) RETURN number
IS
    v_count number;
BEGIN
SELECT count(*) INTO v_count
FROM CulturaInstalada
WHERE sectorID LIKE ID;
IF v_count > 0 THEN
        RETURN 1;
ELSE
        RETURN 0;
END IF;
END;


----------------------------------------------------------------------------------------------------------------
-- Esta função vai buscar a informação das culturas presentes nos sectores e irá retornar esses valores num cursor.
CREATE OR REPLACE FUNCTION quantidadeCulturas (
    ID IN SectorRega.sectorID%TYPE
) RETURN SYS_REFCURSOR
IS
    v_result_cursor SYS_REFCURSOR;
BEGIN
OPEN v_result_cursor FOR
SELECT nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta
FROM CulturaInstalada
WHERE sectorID LIKE ID;
RETURN v_result_cursor;
END;

----------------------------------------------------------------------------------------------------------------
-- Esta função irá buscar o próximo id a ser criado, para ser utilizado na inserção de dados na tabela operacaoCultura.
CREATE OR REPLACE FUNCTION getNewOperacaoID
    RETURN number
IS
    v_count number;
BEGIN
SELECT MAX(operacaoID) INTO v_count
FROM Operacao;
RETURN (v_count+1);
END;