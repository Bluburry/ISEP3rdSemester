-- TIPO ARMAZEM

insert into TipoArmazem (nometipoarmazem) values ('Arrumacao');
insert into TipoArmazem (nometipoarmazem) values ('Armazenagem');
insert into TipoArmazem (nometipoarmazem) values ('Automatico');
insert into TipoArmazem (nometipoarmazem) values ('Prateleiras');
insert into TipoArmazem (nometipoarmazem) values ('Estantes');
insert into TipoArmazem (nometipoarmazem) values ('Carroseis');
insert into TipoArmazem (nometipoarmazem) values ('Transportadores');


-- ARMAZEM

insert into Armazem (armazemID, edificioID, nomeTipoArmazem) values (1, 202, 'Arrumacao');
insert into Armazem (armazemID, edificioID, nomeTipoArmazem) values (2, 203, 'Estantes');
insert into Armazem (armazemID, edificioID, nomeTipoArmazem) values (3, 301, 'Armazenagem');


-- STOCK

insert into Stock (stockID, quantidade, armazemID, tipoUnidade) values (1, 25, 3, 'kg');
insert into Stock (stockID, quantidade, armazemID, tipoUnidade) values (2, 15, 3, 'kg');
insert into Stock (stockID, quantidade, armazemID, tipoUnidade) values (3, 50, 1, 'kg');
insert into Stock (stockID, quantidade, armazemID, tipoUnidade) values (4, 75, 2, 'kg');
insert into Stock (stockID, quantidade, armazemID, tipoUnidade) values (5, 35, 2, 'kg');


-- PRODUTO

INSERT INTO Produto (produtoID, name, stockID) values (1, 'Azeitona', 1);
INSERT INTO Produto (produtoID, name, stockID) values (2, 'Maca', 2);
INSERT INTO Produto (produtoID, name, stockID) values (3, 'Tremoco', 3);
INSERT INTO Produto (produtoID, name, stockID) values (4, 'Milho Doce', 4);
INSERT INTO Produto (produtoID, name, stockID) values (5, 'Tremoco', 5);


-- PRODUCAO

insert into Producao (produtoID, culturaID) values(1, 92);
insert into Producao (produtoID, culturaID) values(2, 38);
insert into Producao (produtoID, culturaID) values(3, 80);
insert into Producao (produtoID, culturaID) values(5, 81);
insert into Producao (produtoID, culturaID) values(4, 83);

