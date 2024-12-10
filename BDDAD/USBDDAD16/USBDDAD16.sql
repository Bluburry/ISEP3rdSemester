create or replace function getListaProdutosColhidos (
	parcelaNome in Parcela.nomeParcela%type,
	dataInit in diaColheita.diaColheita%type,
	dataFim in diaColheita.diaColheita%type
) return sys_refcursor
IS
	lista sys_refcursor;
BEGIN
	OPEN lista FOR
		select distinct diaColheita.nomeParcela, Planta.especie, Stock.quantidade
		from diaColheita join CulturaInstalada
			on diaColheita.nomeParcela = CulturaInstalada.nomeParcela
		join Planta on CulturaInstalada.variedadePlanta = Planta.variedade
		join Producao on Planta.variedade = Producao.variedadePlanta
		join Produto on Producao.produtoID = Produto.produtoID
		join Stock on Produto.stockID = Stock.stockID
		where diaColheita.nomeParcela = parcelaNome
		diaColheita.diaColheita between dataInit and dataFim
		order by diaColheita.nomeParcela;
	return lista;
end;
/

----- Test block ---

set SERVEROUTPUT on;
DECLARE
    t_parcelaNome Parcela.nomeParcela%type := 'HORTA NOVA';
    t_dataInit diaColheita.diaColheita%type := to_date('01/01/2016', 'DD/MM/YYYY');
    t_dataFim diaColheita.diaColheita%type := to_date('01/01/2024', 'DD/MM/YYYY');

    t_lista sys_refcursor;
    
    v_parcelaNome diaColheita.nomeParcela%type;
    v_especie Planta.especie%type;
    v_qtd Stock.quantidade%type;
BEGIN
    t_lista := getListaProdutosColhidos(t_parcelaNome, t_dataInit, t_dataFim);

    LOOP
        FETCH t_lista INTO v_parcelaNome, v_especie, v_qtd;
        EXIT WHEN t_lista%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Parcela: ' || v_parcelaNome || ', Especie: ' || v_especie || ', Quantidade: ' || v_qtd);
    END LOOP;
    CLOSE t_lista;
END;
/

--select distinct diaColheita.nomeParcela, Planta.especie, Stock.quantidade
--from diaColheita join CulturaInstalada
    --on diaColheita.nomeParcela = CulturaInstalada.nomeParcela
--join Planta on CulturaInstalada.variedadePlanta = Planta.variedade
--join Producao on Planta.variedade = Producao.variedadePlanta
--join Produto on Producao.produtoID = Produto.produtoID
--join Stock on Produto.stockID = Stock.stockID
--where diaColheita.nomeParcela = upper('campo novo') and--upper('Horta Nova') AND
--diaColheita.diaColheita between to_date('01/01/2016', 'DD/MM/YYYY') AND to_date('01/01/2024', 'DD/MM/YYYY')
--order by diaColheita.nomeParcela;