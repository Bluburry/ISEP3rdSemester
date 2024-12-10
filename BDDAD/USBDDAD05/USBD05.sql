select distinct CulturaInstalada.parcelaID, Produto.name, Stock.quantidade
    from CulturaInstalada inner join Cultura
		on CulturaInstalada.culturaID = Cultura.culturaID
		inner join Producao
			on Cultura.culturaID = Producao.culturaID
			inner join Produto
				on Producao.produtoID = Produto.produtoID
				inner join Stock
					on Produto.stockID = Stock.stockID
	where diaColheita between to_date('01/01/2016', 'DD/MM/YYYY') AND to_date('01/01/2024', 'DD/MM/YYYY')