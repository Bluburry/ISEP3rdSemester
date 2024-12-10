INSERT INTO Unidade (tipoUnidade) VALUES ('min');

INSERT INTO Unidade (tipoUnidade) VALUES ('l/ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Campo Novo'), 1.1, 'ha');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO EspeciePlanta (especie, variedade, nomeComumPlanta) VALUES ('Cucurbita moschata', UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Nutrofertil');

INSERT INTO tipoOperacao (tipoOperacao) VALUES ('Monda');

INSERT INTO TipoFator (nomeTipoFatorProducao) VALUES ('Adubo para aplicação no solo');

INSERT INTO Quimico (notacaoQuimica) VALUES ('N');

INSERT INTO Quimico (notacaoQuimica) VALUES ('P205');

INSERT INTO Quimico (notacaoQuimica) VALUES ('K2O');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Ca');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Materia Organica');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Fertimax Extrume de Cavalo', 'Adubo para aplicação no solo', 'Nutrofertil', 'Granulado', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Materia Organica', 'Fertimax Extrume de Cavalo', 50, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('N', 'Fertimax Extrume de Cavalo', 3, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('P205', 'Fertimax Extrume de Cavalo', 0.8, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('K2O', 'Fertimax Extrume de Cavalo', 0.4, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Ca', 'Fertimax Extrume de Cavalo', 1.6, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('MgO', 'Fertimax Extrume de Cavalo', 0.3, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('B', 'Fertimax Extrume de Cavalo', 0.04, '%');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('BIOFERTIL N6', 'Adubo para aplicação no solo', 'Nutrofertil', 'Granulado', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Materia Organica', 'BIOFERTIL N6', 53, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('N', 'BIOFERTIL N6', 6.4, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('P205', 'BIOFERTIL N6', 2.5, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('K2O', 'BIOFERTIL N6', 2.4, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Ca', 'BIOFERTIL N6', 6, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('MgO', 'BIOFERTIL N6', 0.3, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('B', 'BIOFERTIL N6', 0.02, '%');

INSERT INTO SectorRega (sectorID) VALUES ('10');

UPDATE CulturaInstalada SET sectorID = '10' WHERE nomeParcela = UPPER('Campo Grande') AND variedadePlanta = UPPER('Galega') AND diaCultivacao = TO_DATE('06/10/2016', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '10' WHERE nomeParcela = UPPER('Campo Grande') AND variedadePlanta = UPPER('Picual') AND diaCultivacao = TO_DATE('10/10/2016', 'DD/MM/YY');


INSERT INTO SectorRega (sectorID) VALUES ('11');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Grande'), UPPER('ARBEQUINA'), TO_DATE('01/05/2017', 'DD/MM/YYYY'), 'Oliveira', 40.0, 'un', '11');


UPDATE CulturaInstalada SET sectorID = '11' WHERE nomeParcela = UPPER('Campo Grande') AND variedadePlanta = UPPER('ARBEQUINA') AND diaCultivacao = TO_DATE('01/05/2017', 'DD/MM/YY');


INSERT INTO SectorRega (sectorID) VALUES ('21');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, quantidade, tipoUnidade, nomeComumPlanta, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YYYY'), 40.0, 'un', 'Macieira','21');

UPDATE CulturaInstalada SET sectorID = '21' WHERE nomeParcela =UPPER('Lameiro da ponte') AND variedadePlanta = UPPER('Jonagored') AND diaCultivacao = TO_DATE('07/01/2017', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '21' WHERE nomeParcela =UPPER('Lameiro da ponte') AND variedadePlanta = UPPER('Fuji') AND diaCultivacao = TO_DATE('08/01/2017', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '21' WHERE nomeParcela =UPPER('Lameiro da ponte') AND variedadePlanta = UPPER('Royal Gala') AND diaCultivacao = TO_DATE('08/01/2017', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '21' WHERE nomeParcela =UPPER('Lameiro da ponte') AND variedadePlanta = UPPER('Royal Gala') AND diaCultivacao = TO_DATE('10/12/2017', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '21' WHERE nomeParcela =UPPER('Lameiro da ponte') AND variedadePlanta = UPPER('Pipo de Basto') AND diaCultivacao = TO_DATE('05/05/2019', 'DD/MM/YY');

Insert into tipoOperacao (tipoOperacao) VALUES ('Fertirrega');

INSERT INTO Quimico (notacaoQuimica) VALUES ('SO3');


INSERT INTO Unidade (tipoUnidade) VALUES ('kg/ha');


INSERT INTO tipoFator (nomeTipoFatorProducao) VALUES ('Adubo Organico');

INSERT INTO tipoFator (nomeTipoFatorProducao) VALUES ('Adubo Liquido');


INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('soluSOP 52', 'Adubo Organico', 'K+S', 'Pó molhável', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('SO3', 'soluSOP 52', 45, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('K2O', 'soluSOP 52', 52.5, '%');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Plymag');

INSERT INTO Formulacao (estadoFisico) VALUES ('liquido');

INSERT INTO Quimico (notacaoQuimica) VALUES ('CaO');


INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Floracal Flow SL', 'Adubo Liquido', 'Plymag', 'Líquido', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('CaO', 'Floracal Flow SL', 35, '%');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Asfertglobal');


INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Kiplant AllGrip', 'Adubo Liquido', 'Asfertglobal', 'liquido', 0, 'Fungicida');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Cuperdem', 'Adubo Liquido', 'Asfertglobal', 'liquido', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('CU', 'Cuperdem', 6, '%');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Tecniferti');


INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Tecniferti MOL', 'Adubo Liquido', 'Tecniferti', 'Líquido', 0, 'Fungicida');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Materia Organica', 'Tecniferti MOL', 27, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('N', 'Tecniferti MOL', 4.6, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('P205', 'Tecniferti MOL', 1, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('K2O', 'Tecniferti MOL', 3, '%');



Insert INTO MixFertirrega (idMix) VALUES (10);

Insert INTO MixFertirrega (idMix) VALUES (11);

INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade) VALUES (10, 'EPSO Microtop', 1.5,'kg/ha');

INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade) VALUES (10, 'soluSOP 52', 2.5,'kg/ha');

INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade) VALUES (10, 'Floracal Flow SL', 2.5,'kg/ha');

INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade) VALUES (11, 'Tecniferti MOL', 60,'l/ha');

INSERT INTO ComposicaoMix (idMix, nomeComercialFator, proporcao, tipoUnidade) VALUES (11, 'Kiplant AllGrip', 2,'l/ha');



INSERT INTO SectorRega (sectorID) VALUES ('22');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Malapio'), 'Macieira');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), TO_DATE('01/05/2019', 'DD/MM/YYYY'),'Macieira' ,40.0, 'un','21');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('Malapio'), TO_DATE('01/05/2019', 'DD/MM/YYYY'),'Macieira' , 40.0, 'un','21');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), TO_DATE('01/05/2019', 'DD/MM/YYYY'),'Macieira' , 40.0, 'un','21');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), TO_DATE('01/05/2019', 'DD/MM/YYYY'),'Macieira' , 40.0, 'un','21');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), TO_DATE('01/05/2019', 'DD/MM/YYYY'),'Macieira' , 40.0, 'un','21');


UPDATE CulturaInstalada SET sectorID = '22' WHERE nomeParcela =UPPER('Lameiro do Moinho') AND variedadePlanta = UPPER('Porta da Loja') AND diaCultivacao = TO_DATE('01/05/2019', 'DD/MM/YYYY');

UPDATE CulturaInstalada SET sectorID = '22' WHERE nomeParcela =UPPER('Lameiro do Moinho') AND variedadePlanta = UPPER('Malapio') AND diaCultivacao = TO_DATE('01/05/2019', 'DD/MM/YYYY');

UPDATE CulturaInstalada SET sectorID = '22' WHERE nomeParcela =UPPER('Lameiro do Moinho') AND variedadePlanta = UPPER('REINETTE OU CANADA') AND diaCultivacao = TO_DATE('01/05/2019', 'DD/MM/YYYY');

UPDATE CulturaInstalada SET sectorID = '22' WHERE nomeParcela =UPPER('Lameiro do Moinho') AND variedadePlanta = UPPER('REINETTE OU Grand Fay') AND diaCultivacao = TO_DATE('01/05/2019', 'DD/MM/YYYY');

UPDATE CulturaInstalada SET sectorID = '22' WHERE nomeParcela =UPPER('Lameiro do Moinho') AND variedadePlanta = UPPER('Gronho Doce') AND diaCultivacao = TO_DATE('01/05/2019', 'DD/MM/YYYY');



INSERT INTO SectorRega (sectorID) VALUES ('41');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), TO_DATE('05/04/2023', 'DD/MM/YYYY'), 'Cenoura', 40.0, 'un', '41');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Novo'), UPPER('Danvers Half Long'), TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Cenoura', 40.0, 'un', '41');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('31/05/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), TO_DATE('05/04/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('08/10/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Cenoura');

UPDATE CulturaInstalada SET sectorID = '41' WHERE nomeParcela =UPPER('Campo Novo') AND variedadePlanta = UPPER('Sugarsnax Hybrid') AND diaCultivacao = TO_DATE('05/04/2023', 'DD/MM/YY');

UPDATE CulturaInstalada SET sectorID = '41' WHERE nomeParcela =UPPER('Campo Novo') AND variedadePlanta = UPPER('Danvers Half Long') AND diaCultivacao = TO_DATE('05/07/2023', 'DD/MM/YY');




INSERT INTO SectorRega (sectorID) VALUES ('42');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Novo'), UPPER('Butternut'), TO_DATE('06/04/2023', 'DD/MM/YYYY'), 'Abóbora manteiga', 40.0, 'un', '42');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta) VALUES (TO_DATE('10/09/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), TO_DATE('06/04/2023', 'DD/MM/YYYY'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (905, 120, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (906, 120, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (907, 120, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (908, 120, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (675, 120, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (905, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (906,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (907,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (908, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (675, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (599, 120, TO_DATE('01/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (600, 120, TO_DATE('01/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (601, 120, TO_DATE('01/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (602, 120, TO_DATE('01/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (603, 120, TO_DATE('01/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (599, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (600,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (601,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (602, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (603, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (604, 120, TO_DATE('15/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (605, 120, TO_DATE('15/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (606, 120, TO_DATE('15/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (607, 120, TO_DATE('15/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (608, 120, TO_DATE('15/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (604, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (605,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (606,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (607, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (608, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (609, 120, TO_DATE('30/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (610, 120, TO_DATE('30/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (611, 120, TO_DATE('30/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (612, 120, TO_DATE('30/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (613, 120, TO_DATE('30/06/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (609, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (610,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (611,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (612, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (613, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (614, 150, TO_DATE('07/07/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (615, 150, TO_DATE('07/07/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (616, 150, TO_DATE('07/07/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (617, 150, TO_DATE('07/07/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (618, 150, TO_DATE('07/07/2023 - 7:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (614, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (615,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (616,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (617, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (618, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (619, 180, TO_DATE('14/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (620, 180, TO_DATE('14/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (621, 180, TO_DATE('14/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (622, 180, TO_DATE('14/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (623, 180, TO_DATE('14/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (619, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (620,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (621,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (622, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (623, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (624, 180, TO_DATE('21/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (625, 180, TO_DATE('21/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (626, 180, TO_DATE('21/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (627, 180, TO_DATE('21/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (628, 180, TO_DATE('21/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (624, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (625,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (626,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (627, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (628, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (900, 180, TO_DATE('28/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (901, 180, TO_DATE('28/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (902, 180, TO_DATE('28/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (903, 180, TO_DATE('28/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (904, 180, TO_DATE('28/07/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (900, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (901, TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (902,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (903, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (904, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (629, 180, TO_DATE('04/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (630, 180, TO_DATE('04/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (631, 180, TO_DATE('04/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (632, 180, TO_DATE('04/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (633, 180, TO_DATE('04/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (629, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (630,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (631,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (632, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (633, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (634, 150, TO_DATE('11/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (635, 150, TO_DATE('11/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (636, 150, TO_DATE('11/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (637, 150, TO_DATE('11/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (638, 150, TO_DATE('11/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (634, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (635,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (636,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (637, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (638, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (639, 150, TO_DATE('18/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (640, 150, TO_DATE('18/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (641, 150, TO_DATE('18/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (642, 150, TO_DATE('18/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (643, 150, TO_DATE('18/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (639, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (640,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (641,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (642, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (643, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (644, 120, TO_DATE('25/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (645, 120, TO_DATE('25/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (646, 120, TO_DATE('25/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (647, 120, TO_DATE('25/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (648, 120, TO_DATE('25/08/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (644, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (645,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (646,TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (647, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (648, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (649, 120, TO_DATE('01/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (650, 120, TO_DATE('01/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (651, 120, TO_DATE('01/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (652, 120, TO_DATE('01/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (653, 120, TO_DATE('01/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (649, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (650,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (651,TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (652, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (653, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (654, 120, TO_DATE('08/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (655, 120, TO_DATE('08/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (656, 120, TO_DATE('08/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (657, 120, TO_DATE('08/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (658, 120, TO_DATE('08/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (654, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (655,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (656,TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (657, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (658, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (659, 120, TO_DATE('15/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (660, 120, TO_DATE('15/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (661, 120, TO_DATE('15/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (662, 120, TO_DATE('15/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (663, 120, TO_DATE('15/09/2023 - 22:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (659, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (660,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (661,TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (662, UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YY'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (663, UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), TO_DATE('01/05/2019', 'DD/MM/YY'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (225, 700, TO_DATE('18/08/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (225,TO_DATE('08/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (226, 900, TO_DATE('30/08/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (226,TO_DATE('08/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Royal Gala'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (227, 900, TO_DATE('05/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (227,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (228, 1050, TO_DATE('08/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (228,  TO_DATE('07/01/2017', 'DD/MM/YY'), UPPER('Lameiro da ponte') ,UPPER('Jonagored'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (229, 950, TO_DATE('28/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (229,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (230, 800, TO_DATE('03/08/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (230,TO_DATE('08/01/2017', 'DD/MM/YY'),UPPER('Lameiro da ponte') ,UPPER('Fuji'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (231, 3200, TO_DATE('04/01/2019', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 231);



INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (232, 50, TO_DATE('09/01/2019', 'DD/MM/YYYY'),  'un', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (232, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (232, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (233, 20, TO_DATE('09/01/2019', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (233, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (233, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (234, 40, TO_DATE('10/01/2019', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (234, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (234, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (235, 30, TO_DATE('10/01/2019', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (235, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (235, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (236, 40, TO_DATE('11/01/2019', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (236, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (236, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (237, 50, TO_DATE('11/01/2019', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (237, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (237, 5,5);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (238,  100, TO_DATE('06/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 238);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (239, 40, TO_DATE('06/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 239);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (240, 80, TO_DATE('06/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 240);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (241, 60, TO_DATE('06/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 241);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (242, 80, TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 242);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (243,  100, TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 243);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (244, 150, TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 244);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (245, 60, TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 245);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (246, 120, TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 246);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (247, 90, TO_DATE('08/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 247);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (248, 120, TO_DATE('08/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 248);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (249, 150, TO_DATE('08/01/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 249);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (250, 5, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 250);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (251, 2, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 251);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (252, 4, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 252);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (253, 3, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 253);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (254, 4, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 254);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (255, 5, TO_DATE('15/05/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 255);



INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (891, 5, TO_DATE('15/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 891);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (892, 2, TO_DATE('15/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 892);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (893, 4, TO_DATE('15/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 893);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (894, 3, TO_DATE('16/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 894);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (895, 4, TO_DATE('16/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 895);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (896, 5, TO_DATE('16/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 896);





INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (238, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (239, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (240, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (241, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (242, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (243, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (244, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (245, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (246, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (247, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (248, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (249, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (891, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (892, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (893, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (894, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (895, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (896, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (250, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (251, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (252, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Pipo de Basto'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (253, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (254, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (255, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

-- SETOR 22

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (700, 120, TO_DATE('13/05/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (701, 120, TO_DATE('13/05/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (702, 120, TO_DATE('13/05/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (703, 120, TO_DATE('13/05/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (704, 120, TO_DATE('13/05/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (700, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (701, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (702, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (703, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (704, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (705, 120, TO_DATE('02/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (706, 120, TO_DATE('02/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (707, 120, TO_DATE('02/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (708, 120, TO_DATE('02/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (709, 120, TO_DATE('02/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (705, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (706, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (707, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (708, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (709, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (710, 120, TO_DATE('16/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (711, 120, TO_DATE('16/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (712, 120, TO_DATE('16/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (713, 120, TO_DATE('16/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (714, 120, TO_DATE('16/06/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (710, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (711, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (712, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (713, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (714, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (710, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (711, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (712, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (713, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (714, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (715, 120, TO_DATE('01/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (716, 120, TO_DATE('01/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (717, 120, TO_DATE('01/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (718, 120, TO_DATE('01/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (719, 120, TO_DATE('01/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (715, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (716, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (717, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (718, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (719, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (720, 180, TO_DATE('08/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (721, 180, TO_DATE('08/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (722, 180, TO_DATE('08/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (723, 180, TO_DATE('08/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (724, 180, TO_DATE('08/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (720, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (721, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (722, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (723, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (724, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');


INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (725, 180, TO_DATE('15/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (726, 180, TO_DATE('15/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (727, 180, TO_DATE('15/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (728, 180, TO_DATE('15/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (729, 180, TO_DATE('15/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (725, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (726, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (727, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (728, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (729, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (725, 11);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (726, 11);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (727, 11);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (728, 11);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (729, 11);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (730, 180, TO_DATE('22/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (731, 180, TO_DATE('22/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (732, 180, TO_DATE('22/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (733, 180, TO_DATE('22/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (734, 180, TO_DATE('22/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (730, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (731, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (732, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (733, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (734, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (735, 180, TO_DATE('29/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (736, 180, TO_DATE('29/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (737, 180, TO_DATE('29/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (738, 180, TO_DATE('29/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (739, 180, TO_DATE('29/07/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (735, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (736, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (737, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (738, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (739, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (740, 150, TO_DATE('05/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (741, 150, TO_DATE('05/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (742, 150, TO_DATE('05/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (743, 150, TO_DATE('05/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (744, 150, TO_DATE('05/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (740, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (741, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (742, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (743, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (744, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (745, 150, TO_DATE('10/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (746, 150, TO_DATE('10/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (747, 150, TO_DATE('10/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (748, 150, TO_DATE('10/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (749, 150, TO_DATE('10/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (745, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (746, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (747, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (748, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (749, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (745, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (746, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (747, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (748, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (749, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (750, 150, TO_DATE('17/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (751, 150, TO_DATE('17/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (752, 150, TO_DATE('17/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (753, 150, TO_DATE('17/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (754, 150, TO_DATE('17/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (750, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (751, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (752, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (753, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (754, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (755, 120, TO_DATE('24/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (756, 120, TO_DATE('24/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (757, 120, TO_DATE('24/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (758, 120, TO_DATE('24/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (759, 120, TO_DATE('24/08/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (755, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (756, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (757, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (758, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (759, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (760, 120, TO_DATE('02/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (761, 120, TO_DATE('02/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (762, 120, TO_DATE('02/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (763, 120, TO_DATE('02/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (764, 120, TO_DATE('02/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (760, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (761, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (762, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (763, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (764, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (765, 120, TO_DATE('09/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (766, 120, TO_DATE('09/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (767, 120, TO_DATE('09/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (768, 120, TO_DATE('09/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (769, 120, TO_DATE('09/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (765, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (766, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (767, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (768, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (769, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (765, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (766, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (767, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (768, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (769, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (770, 120, TO_DATE('18/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (771, 120, TO_DATE('18/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (772, 120, TO_DATE('18/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (773, 120, TO_DATE('18/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (774, 120, TO_DATE('18/09/2023 - 23:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (770, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (771, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (772, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU CANADA'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (773, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Grand Fay'), 'Macieira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (774, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (276, 600, TO_DATE('16/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (276, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (277, 700, TO_DATE('15/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (277, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU Canada'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (278, 700, TO_DATE('20/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (278, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (279, 600, TO_DATE('27/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (279, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (280, 700, TO_DATE('05/10/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (280, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho') ,UPPER('Pipo de Basto'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (281, 1200, TO_DATE('15/10/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (281, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Gronho Doce'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (507, 700, TO_DATE('15/10/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (507, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Malapio'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (282, 700, TO_DATE('12/11/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (282, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (283, 800, TO_DATE('15/11/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (283, TO_DATE('01/05/2019', 'DD/MM/YYYY'), UPPER('Lameiro do Moinho'), UPPER('Porta da Loja'), 'Macieira');



INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (665, 60, TO_DATE('02/06/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (666, 60, TO_DATE('02/06/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (665, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (666, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (667, 120, TO_DATE('02/07/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (668, 120, TO_DATE('02/07/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (667, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (668, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (669, 180, TO_DATE('02/08/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (670, 180, TO_DATE('02/08/2023', 'DD/MM/YYYY'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (669, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (670, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (671, 120, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (672, 120, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (671, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (672, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (673, 120, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (674, 120, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (673, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (674, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (408, 120, TO_DATE('13/01/2021', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (408, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6',408);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (515, 180, TO_DATE('12/01/2021', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (515, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 515);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (516, 180, TO_DATE('12/01/2021', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (516, TO_DATE('01/05/2017', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO PlantacaoPermanente  (operacaoID, distanciaEntreFilas, compasso) VALUES (516, 6, 6);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 516);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (517, 120, TO_DATE('12/01/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (517, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 517);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (518, 180, TO_DATE('12/01/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (518, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 518);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (519, 180, TO_DATE('13/01/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (519, TO_DATE('01/05/2017', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 519);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (520, 120, TO_DATE('12/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (520, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 520);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (521, 180, TO_DATE('12/01/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (521, TO_DATE('01/05/2017', 'DD/MM/YYYY'), UPPER('Campo Grande'), UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('BIOFERTIL N6', 521);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (593, 400, TO_DATE('01/11/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (593, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (553, 300, TO_DATE('05/11/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (553, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (554, 350, TO_DATE('08/11/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (554, TO_DATE('01/05/2017', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (555, 60, TO_DATE('02/06/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (555, UPPER('Campo Grande'));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (556, 120, TO_DATE('02/07/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (556, UPPER('Campo Grande'));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (557, 120, TO_DATE('02/08/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (557, UPPER('Campo Grande'));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (558, 120, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (558, UPPER('Campo Grande'));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (559, 120, TO_DATE('02/10/2023', 'DD/MM/YYYY'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (559, UPPER('Campo Grande'));

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Mobilização do Solo');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (287, 500, TO_DATE('01/04/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (287, UPPER('Campo Novo'));

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Biocal Composto', 287);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (288, 1.2, TO_DATE('05/04/2023', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (288, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (289, 1.5, TO_DATE('06/04/2023', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (289, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (290, 0.5, TO_DATE('08/05/2023', 'DD/MM/YYYY'), 'ha', 'Poda', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (290, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (291, 0.6, TO_DATE('20/05/2023', 'DD/MM/YYYY'), 'ha', 'Poda', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (291, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (292, 1500, TO_DATE('14/06/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (292, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('14/06/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), TO_DATE('05/04/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (293, 0.6, TO_DATE('20/06/2023', 'DD/MM/YYYY'), 'ha', 'Poda', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (293, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (294, 2500, TO_DATE('28/06/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (294, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao,  nomeComumPlanta) VALUES (TO_DATE('28/06/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), TO_DATE('05/04/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (295, 1800, TO_DATE('03/07/2023', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (295, UPPER('Campo Novo'));

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Fertimax Extrume de Cavalo', 295);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (296, 0.5, TO_DATE('04/07/2023', 'DD/MM/YYYY'), 'ha', 'Mobilização do Solo', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (296, UPPER('Campo Novo'));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (297, 1.2, TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (297, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (298, 0.5, TO_DATE('08/08/2023', 'DD/MM/YYYY'), 'ha', 'Monda', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (298, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (299, 8000, TO_DATE('15/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (299, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('15/09/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), TO_DATE('06/04/2023', 'DD/MM/YYYY'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (300, 5000, TO_DATE('25/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (300, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('25/09/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), TO_DATE('06/04/2023', 'DD/MM/YYYY'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (301, 900, TO_DATE('18/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (301, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('18/09/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (302, 1500, TO_DATE('22/09/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (302, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumplanta) VALUES (TO_DATE('22/09/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (303, 1200, TO_DATE('05/10/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (303, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('05/10/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), TO_DATE('05/07/2023', 'DD/MM/YYYY'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (304, 1.1, TO_DATE('10/10/2023', 'DD/MM/YYYY'), 'ha', 'Mobilização do Solo', 'Placeholder');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (304, UPPER('Campo Novo'));

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao,nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Novo'), UPPER('Amarelo'), TO_DATE('12/10/2023', 'DD/MM/YYYY'),'Tremoço', 32, 'kg', '0');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (305, 32, TO_DATE('12/10/2023', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (305, TO_DATE('12/10/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Amarelo'), 'Tremoço');


--SETOR 41

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (775, 120, TO_DATE('20/05/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (776, 120, TO_DATE('20/05/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (775, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (776, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (777, 120, TO_DATE('02/06/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (778, 120, TO_DATE('02/06/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (777, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (778, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (779, 120, TO_DATE('09/06/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (780, 120, TO_DATE('09/06/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (779, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (780, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (781, 120, TO_DATE('09/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (782, 120, TO_DATE('09/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (781, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (782, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (783, 120, TO_DATE('16/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (784, 120, TO_DATE('16/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (783, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (784, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (785, 240, TO_DATE('23/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (786, 240, TO_DATE('23/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (785, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (786, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (787, 240, TO_DATE('30/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (788, 240, TO_DATE('30/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (787, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (788, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (793, 120, TO_DATE('21/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (794, 120, TO_DATE('21/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (793, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (794, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (795, 120, TO_DATE('28/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (796, 120, TO_DATE('28/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (795, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (796, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (797, 120, TO_DATE('06/09/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (798, 120, TO_DATE('06/09/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (797, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (798, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (799, 120, TO_DATE('13/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (800, 120, TO_DATE('13/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (799, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (800, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (801, 120, TO_DATE('20/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (802, 120, TO_DATE('20/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (801, TO_DATE('05/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Sugarsnax Hybrid'), 'Cenoura');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (802, TO_DATE('05/07/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Danvers Half Long'), 'Cenoura');






INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (909, 60, TO_DATE('02/06/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (910, 60, TO_DATE('02/06/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (909, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (910, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (909, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (910, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (911, 30, TO_DATE('17/06/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (912, 30, TO_DATE('17/06/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (911, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (912, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (913, 30, TO_DATE('17/07/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (914, 30, TO_DATE('17/07/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (913, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (914, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (915, 60, TO_DATE('17/08/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (916, 60, TO_DATE('17/08/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (915, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (916, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (917, 120, TO_DATE('04/09/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (918, 120, TO_DATE('04/09/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (917, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (918, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (919, 30, TO_DATE('18/09/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (920, 30, TO_DATE('18/09/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (919, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (920, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (921, 60, TO_DATE('02/10/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (922, 60, TO_DATE('02/10/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (921, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (922, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (923, 120, TO_DATE('02/07/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (924, 120, TO_DATE('02/07/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (923, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (924, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (923, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (924, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (925, 180, TO_DATE('02/08/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (926, 180, TO_DATE('02/08/2023 - 05:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (925, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (926, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Fertirrega (operacaoID, idMix) VALUES (925, 10);
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (926, 10);


-- Setor 42

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (927, 60, TO_DATE('12/06/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (927, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (928, 60, TO_DATE('19/06/2023 - 06:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (928, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (929, 120, TO_DATE('08/07/2023 - 04:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (929, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (930, 150, TO_DATE('22/07/2023 - 04:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (930, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (931, 150, TO_DATE('12/08/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (931, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (932, 120, TO_DATE('19/08/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (932, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (933, 120, TO_DATE('26/08/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (933, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (934, 120, TO_DATE('31/08/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (934, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (935, 120, TO_DATE('05/09/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (935, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');




INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (936, 120, TO_DATE('30/06/2023 - 04:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (936, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (936, 11);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (937, 120, TO_DATE('15/07/2023 - 04:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (937, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (937, 10);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (938, 150, TO_DATE('29/07/2023 - 04:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (938, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (938, 11);

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (939, 150, TO_DATE('12/08/2023 - 21:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (939, TO_DATE('06/04/2023', 'DD/MM/YYYY'), UPPER('Campo Novo'), UPPER('Butternut'), 'Abóbora manteiga');
INSERT INTO Fertirrega (operacaoID, idMix) VALUES (939, 10);





INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (940, 120, TO_DATE('02/06/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (941, 120, TO_DATE('02/06/2023 - 07:30', 'DD/MM/YYYY - HH24:MI'), 'min', 'Fertirrega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (940, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (941, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (942, 120, TO_DATE('09/06/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (943, 120, TO_DATE('09/06/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (942, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (943, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (944, 120, TO_DATE('23/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (945, 120, TO_DATE('23/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (944, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (945, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (946, 120, TO_DATE('30/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (947, 120, TO_DATE('30/07/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (946, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (947, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (948, 120, TO_DATE('07/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (949, 120, TO_DATE('07/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (948, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (949, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (950, 120, TO_DATE('14/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (951, 120, TO_DATE('14/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (950, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (951, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (952, 120, TO_DATE('21/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (953, 120, TO_DATE('21/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (952, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (953, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (954, 120, TO_DATE('28/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (955, 120, TO_DATE('28/08/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (954, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (955, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (956, 120, TO_DATE('06/09/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (957, 120, TO_DATE('06/09/2023 - 06:20', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (956, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (957, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (958, 120, TO_DATE('13/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (959, 120, TO_DATE('13/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (958, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (959, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (960, 120, TO_DATE('20/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');
INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (961, 120, TO_DATE('20/09/2023 - 07:00', 'DD/MM/YYYY - HH24:MI'), 'min', 'Rega', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (960, TO_DATE('06/10/2016', 'DD/MM/YY'), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');
INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (961, TO_DATE('10/10/2016', 'DD/MM/YY'),UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');