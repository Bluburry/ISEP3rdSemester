
CREATE OR REPLACE TYPE Quantidades_Arr IS VARRAY(10) OF NUMBER;
/
CREATE OR REPLACE TYPE Unidades_Arr IS VARRAY(10) OF NVARCHAR2(50);
/
CREATE OR REPLACE TYPE Fatores_Arr IS VARRAY(10) OF NVARCHAR2(50);
/


create or replace FUNCTION verificarFatorExiste(
    
    v_nomeComercialFator IN FatorProducao.nomeComercialFator%TYPE
) RETURN NUMBER IS
    found NUMBER := 0;
BEGIN
    BEGIN
        SELECT COUNT(*) INTO found
        FROM FatorProducao
        WHERE nomeComercialFator = v_nomeComercialFator;

    END;
    RETURN found;
END;
/

create or replace FUNCTION registarMixFertirrega(
    
    v_idMix IN MixFertirrega.idMix%TYPE
)RETURN NUMBER IS
    found NUMBER := 0;
BEGIN
    BEGIN
        SELECT COUNT(*) INTO found
        FROM MixFertirrega
        WHERE idMix = v_idMix;
        
        IF found = 0 THEN
        INSERT INTO MixFertirrega (idMix) VALUES (v_idMix);
        END IF;
    END;
    
    RETURN found;
END;
/


create or replace PROCEDURE verificarSeUnidadeExiste(
    P_TIPOUNIDADE IN Unidade.tipoUnidade%TYPE
)IS
BEGIN
    DECLARE
    flag NUMBER(10) := 0;
    BEGIN
        SELECT COUNT(tipoUnidade) INTO flag FROM Unidade WHERE tipoUnidade = p_tipoUnidade;

        IF flag = 0 THEN
            INSERT INTO Unidade (tipoUnidade) VALUES (p_tipoUnidade);
        END IF;
    END;
END;
/

CREATE OR REPLACE PROCEDURE registarReceitaFertirrega(
    v_nFatores IN NUMBER,
    v_quantidades IN Quantidades_Arr,
    v_idMix IN ComposicaoMix.idMix%TYPE,
    v_proporcoes IN Unidades_Arr,
    v_fatores IN Fatores_Arr
)
IS

    counter NUMBER := 1;
    flag NUMBER;

    fatorProducaoFalso EXCEPTION;
    mixExiste EXCEPTION;
BEGIN
    BEGIN
    
       IF registarMixFertirrega(v_idMix) = 1 THEN
            RAISE mixExiste;
        END IF;
        
        
       WHILE (counter <= v_nFatores) LOOP
        flag := verificarFatorExiste(v_fatores(counter));

        IF flag = 0 THEN
            RAISE fatorProducaoFalso;
        END IF;
        
        
        verificarSeUnidadeExiste(v_proporcoes(counter));

        INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade)
        VALUES (v_idMix, v_fatores(counter), v_quantidades(counter), v_proporcoes(counter));

        counter := counter +1;
        END LOOP;
        COMMIT;

    EXCEPTION
        WHEN fatorProducaoFalso THEN
            -- Rollback on specific exception
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Este Fator não existe');
        
        WHEN mixExiste THEN
            -- Rollback on specific exception
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'Este mix já existe');

        WHEN OTHERS THEN
            -- Rollback on other exceptions
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20002, 'Erro não especificado');
    END;
END;
/



--Bloco Anônimo para executar o procedimento "registarReceitaFertirrega"--

SET SERVEROUTPUT ON;
DECLARE
  quantidades Quantidades_Arr := Quantidades_Arr(60, 2, 2.5);
  unidades Unidades_Arr := Unidades_Arr('l/ha', 'l/ha', 'kg/ha');
  fatores Fatores_Arr := Fatores_Arr('Tecniferti MOL', 'Kiplant AllGrip', 'soluSOP 52');
  
  v_nFatores NUMBER := 3;
  v_idMix ComposicaoMix.idMix%TYPE := 22;

BEGIN
  registarReceitaFertirrega(
    v_nFatores => v_nFatores,
    v_quantidades => quantidades,
    v_idMix => v_idMix,
    v_proporcoes => unidades,
    v_fatores => fatores
  );
  

  
  DBMS_OUTPUT.PUT_LINE('Procedure completed successfully');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/



--Bloco Anônimo usado para ver todas as receitas registadas--

SET SERVEROUTPUT ON;
DECLARE
  v_idMix ComposicaoMix.idMix%TYPE;
  v_nomeComercialFator ComposicaoMix.nomeComercialFator%TYPE;
  v_proporcao ComposicaoMix.proporcao%TYPE;
  v_tipoUnidade ComposicaoMix.tipoUnidade%TYPE;

  CURSOR c_composicao_mix IS
    SELECT idMix, nomeComercialFator, proporcao, tipoUnidade
    FROM ComposicaoMix;
BEGIN
  OPEN c_composicao_mix;

  LOOP
    FETCH c_composicao_mix INTO v_idMix, v_nomeComercialFator, v_proporcao, v_tipoUnidade;
    EXIT WHEN c_composicao_mix%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('IDMIX: ' || RPAD(UPPER(v_idMix), 10) || '| NOME_COMERCIAL_FATOR: ' || RPAD(UPPER(v_nomeComercialFator), 20) || '| PROPORCAO: ' || RPAD(UPPER(v_proporcao), 2) || UPPER(v_tipoUnidade));
  END LOOP;

  CLOSE c_composicao_mix;
END;
/
