-- TIPO ARMAZEM

insert into TipoEdificio (nomeTipoEdificio) values ('Arrumacao');
insert into TipoEdificio (nomeTipoEdificio) values ('Armazenagem');
insert into TipoEdificio (nomeTipoEdificio) values ('Automatico');
insert into TipoEdificio (nomeTipoEdificio) values ('Prateleiras');
insert into TipoEdificio (nomeTipoEdificio) values ('Estantes');
insert into TipoEdificio (nomeTipoEdificio) values ('Carroseis');
insert into TipoEdificio (nomeTipoEdificio) values ('Transportadores');


-- ARMAZEM

insert into Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) values ('Edificio 1', 202, 'Arrumacao', 'm3');
insert into Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) values ('Edificio 2', 203, 'Estantes', 'm3');
insert into Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) values ('Edificio 3', 301, 'Armazenagem', 'm3');


-- STOCK

insert into Stock (stockID, nomeEdificio, quantidade, tipoUnidade) values (1, 'Edificio 3', 25, 'kg'); -- NELSON HYBRID
insert into Stock (stockID, nomeEdificio, quantidade, tipoUnidade) values (2, 'Edificio 3', 15, 'kg'); -- BUTTERNUT
insert into Stock (stockID, nomeEdificio, quantidade, tipoUnidade) values (3, 'Edificio 3', 50, 'kg'); -- SUGARSNAX HYBRID
insert into Stock (stockID, nomeEdificio, quantidade, tipoUnidade) values (4, 'Edificio 3', 75, 'kg');
insert into Stock (stockID, nomeEdificio, quantidade, tipoUnidade) values (5, 'Edificio 3', 35, 'kg');

-- Produto

insert into Produto (produtoID, name, stockID, nomeEdificio) values (1, 'Produto 1', 1, 'Edificio 3'); -- NELSON HYBRID
insert into Produto (produtoID, name, stockID, nomeEdificio) values (2, 'Produto 2', 2, 'Edificio 3'); -- BUTTERNUT
insert into Produto (produtoID, name, stockID, nomeEdificio) values (3, 'Produto 3', 3, 'Edificio 3'); -- SUGARSNAX HYBRID


-- Producao

insert into Producao (produtoID, variedadePlanta) values (1, 'NELSON HYBRID');
insert into Producao (produtoID, variedadePlanta) values (2, 'BUTTERNUT');
insert into Producao (produtoID, variedadePlanta) values (3, 'SUGARSNAX HYBRID');
