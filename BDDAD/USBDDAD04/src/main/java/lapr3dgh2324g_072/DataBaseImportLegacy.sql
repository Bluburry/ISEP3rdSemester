INSERT INTO Fabricante (nomeFabricante) VALUES ('ASCENZA');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Bayer');

INSERT INTO Fabricante (nomeFabricante) VALUES ('K+S');

INSERT INTO Fabricante (nomeFabricante) VALUES ('Biocal');

INSERT INTO SectorRega (sectorID) VALUES (0);

INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Pendente');

INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Executada');

INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Anulada');

INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Placeholder');

INSERT INTO TipoFator (nomeTipoFatorProducao) VALUES ('Fitofármaco');

INSERT INTO TipoFator (nomeTipoFatorProducao) VALUES ('Adubo');

INSERT INTO TipoFator (nomeTipoFatorProducao) VALUES ('Corretor');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Fungicida');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Adubo solo');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Adubo foliar+Fertirrega');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Adubo foliar');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Correção solo');

INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('Insecticida');

INSERT INTO Formulacao (estadoFisico) VALUES ('Pó molhável');

INSERT INTO Formulacao (estadoFisico) VALUES ('Granulado');

INSERT INTO Formulacao (estadoFisico) VALUES ('Pó');

INSERT INTO Formulacao (estadoFisico) VALUES ('Líquido');

INSERT INTO Formulacao (estadoFisico) VALUES ('Emulsão de óleo em água');

INSERT INTO Quimico (notacaoQuimica) VALUES ('CU');

INSERT INTO Quimico (notacaoQuimica) VALUES ('S');

INSERT INTO Quimico (notacaoQuimica) VALUES ('K');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Mg');

INSERT INTO Quimico (notacaoQuimica) VALUES ('B');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Mn');

INSERT INTO Quimico (notacaoQuimica) VALUES ('CaCO3');

INSERT INTO Quimico (notacaoQuimica) VALUES ('MgCO3');

INSERT INTO Quimico (notacaoQuimica) VALUES ('MgO');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Bacillus pumilus');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Ácidos gordos (na forma de sais de potássio)');

INSERT INTO Quimico (notacaoQuimica) VALUES ('Terpenóides');

INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Sementeira');

INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Poda');

INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Floração');

INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Novembro a dezembro', 'Poda');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Fevereiro a marco', 'Floração');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Julho a agosto', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Marco a abril', 'Floração');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Agosto a setembro', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Janeiro', 'Poda');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Abril a maio', 'Floração');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Novembro a dezembro', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('80 dias', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Abril a junho', 'Sementeira');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Julho a setembro', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Marco a setembro', 'Sementeira');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Junho a fevereiro', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Outubro a novembro', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Fevereiro a abril, agosto a outubro', 'Sementeira');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('90 dias', 'Colheita');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Dezembro a janeiro', 'Poda');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Maio', 'Floração');

INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('Junho a agosto', 'Colheita');

INSERT INTO Unidade (tipoUnidade) VALUES ('NS');

INSERT INTO Unidade (tipoUnidade) VALUES ('%');

INSERT INTO Unidade (tipoUnidade) VALUES ('m');

INSERT INTO Unidade (tipoUnidade) VALUES ('ha');

INSERT INTO Unidade (tipoUnidade) VALUES ('m2');

INSERT INTO Unidade (tipoUnidade) VALUES ('m3');

INSERT INTO Unidade (tipoUnidade) VALUES ('un');

INSERT INTO Unidade (tipoUnidade) VALUES ('kg');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Plantação');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Rega');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Poda');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Fertilização');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Aplicação fitofármaco');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Sementeira');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Colheita');

INSERT INTO TipoOperacao (tipoOperacao) VALUES ('Incorporação no solo');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Campo da bouça'), 1.2, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Campo grande'), 3.0, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Campo do poço'), 1.5, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Lameiro da ponte'), 0.8, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Lameiro do moinho'), 1.1, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Horta nova'), 0.3, 'ha');

INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('Vinha'), 2.0, 'ha');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('RAINHA CLAUDIA CARANGUEJEIRA'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PRESIDENT'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('STANLEY'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('ANGELENO'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK BEAUTY'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK STAR'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK GOLD'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK DIAMOND'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK AMBER'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BLACK SPLENDOR'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('FORTUNA'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('FRIAR'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('EL DORADO'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('ELEPHANT HEART'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GOLDEN JAPAN'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('HARRY PITCHON'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('LAETITIA'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('METLEY'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MIRABELLE DE NANCY'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('QUEEN ROSE'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('RED BEAUT'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('SANTA ROSA'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('SHIRO'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('SUNGOLD'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('WILSON PERFECTION'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('AUTUMN GIANT'), 'Ameixoeira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BULIDA'), 'Damasqueiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('CANINO'), 'Damasqueiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('LIABAUD'), 'Damasqueiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MAILLOT JAUNE'), 'Damasqueiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('POLONAIS'), 'Damasqueiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('AKANE'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BELGOLDEN'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('BRAVO DE ESMOLFE'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('CASA NOVA DE ALCOBACA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('EROVAN'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('FUJI'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GRANNY SMITH'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GOLDEN DELICIOUS'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('HI-EARLY'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('JONAGORED'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('LYSGOLDEN'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MUTSU'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PORTA DA LOJA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('REINETTE OU CANADA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('RISCADINHA DE PALMELA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('ROYAL GALA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('REDCHIEF'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('STARKING'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('SUMMER RED'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('WELLSPUR DELICIOUS'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('NOIVA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('OLHO ABERTO'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('CAMOESA ROSA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MALAPIO'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GRONHO DOCE'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PE DE BOI'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PINOVA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PARDO LINDO'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PIPO DE BASTO'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PRIMA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('QUERINA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('VISTA BELLA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GOLDEN SMOOTHEE'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GOLDEN SUPREMA'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('GLOSTER 69'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('FREEDOM'), 'Macieira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('SNINSEIKI'), 'Pera Nashi');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('KUMOI'), 'Pera Nashi');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('HOSUI'), 'Pera Nashi');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('NIJISSEIKI'), 'Pera Nashi');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Carson Hybrid'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Red Cored Chantenay'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Imperator 58'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Scarlet Nantes'), 'Cenoura');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Amarelo'), 'Tremoco');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Branco'), 'Tremoco');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MAS 24.C'), 'Milho');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Senhora Conceicao'), 'Nabo greleiro');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('COBRANCOSA'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('HOJIBLANCA'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('NEGRINHA DO FREIXO'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('PICUAL'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('MACANILHA'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('CONSERVA DE ELVAS'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Galega'), 'Oliveira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('S. Cosme'), 'Nabo');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Dona Maria'), 'Videira');

INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('Cardinal'), 'Videira');

INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('placeholderType');

INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('Armazém');

INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('Garagem');

INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('Moinho');

INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('Rega');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('placeholderName', 0, 'placeholderType', 'm');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Espigueiro', 600.0, 'Armazém', 'm2');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Armazém novo', 800.0, 'Armazém', 'm2');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Armazém grande', 900.0, 'Garagem', 'm2');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Moinho', 0, 'Moinho', 'NS');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Tanque do campo grande', 18.0, 'Rega', 'm3');

INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('Poço da bouça', 35.0, 'Rega', 'm3');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('RAINHA CLAUDIA CARANGUEJEIRA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('RAINHA CLAUDIA CARANGUEJEIRA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('RAINHA CLAUDIA CARANGUEJEIRA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PRESIDENT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('PRESIDENT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('PRESIDENT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('STANLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('STANLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('STANLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('ANGELENO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('ANGELENO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('ANGELENO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK BEAUTY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK BEAUTY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK BEAUTY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK STAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK STAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK STAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK GOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK GOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK GOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK DIAMOND'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK DIAMOND'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK DIAMOND'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK AMBER'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK AMBER'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK AMBER'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BLACK SPLENDOR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BLACK SPLENDOR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BLACK SPLENDOR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('FORTUNA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('FORTUNA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('FORTUNA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('FRIAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('FRIAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('FRIAR'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('EL DORADO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('EL DORADO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('EL DORADO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('ELEPHANT HEART'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('ELEPHANT HEART'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('ELEPHANT HEART'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GOLDEN JAPAN'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('GOLDEN JAPAN'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('GOLDEN JAPAN'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('HARRY PITCHON'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('HARRY PITCHON'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('HARRY PITCHON'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('LAETITIA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('LAETITIA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('LAETITIA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('METLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('METLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('METLEY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('MIRABELLE DE NANCY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('MIRABELLE DE NANCY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('MIRABELLE DE NANCY'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('QUEEN ROSE'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('QUEEN ROSE'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('QUEEN ROSE'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('RED BEAUT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('RED BEAUT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('RED BEAUT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('SANTA ROSA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('SANTA ROSA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('SANTA ROSA'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('SHIRO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('SHIRO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('SHIRO'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('SUNGOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('SUNGOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('SUNGOLD'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('WILSON PERFECTION'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('WILSON PERFECTION'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('WILSON PERFECTION'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('AUTUMN GIANT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('AUTUMN GIANT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('AUTUMN GIANT'), 'Ameixoeira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BULIDA'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('BULIDA'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('BULIDA'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('CANINO'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('CANINO'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('CANINO'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('LIABAUD'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('LIABAUD'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('LIABAUD'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('MAILLOT JAUNE'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('MAILLOT JAUNE'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('MAILLOT JAUNE'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('POLONAIS'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a marco', 'Floração', UPPER('POLONAIS'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a agosto', 'Colheita', UPPER('POLONAIS'), 'Damasqueiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('AKANE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('AKANE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('AKANE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BELGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('BELGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('BELGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('BRAVO DE ESMOLFE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('BRAVO DE ESMOLFE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('BRAVO DE ESMOLFE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('CASA NOVA DE ALCOBACA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('CASA NOVA DE ALCOBACA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('CASA NOVA DE ALCOBACA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('EROVAN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('EROVAN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('EROVAN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('FUJI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('FUJI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('FUJI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GRANNY SMITH'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GRANNY SMITH'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GRANNY SMITH'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GOLDEN DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GOLDEN DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GOLDEN DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('HI-EARLY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('HI-EARLY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('HI-EARLY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('JONAGORED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('JONAGORED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('JONAGORED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('LYSGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('LYSGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('LYSGOLDEN'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('MUTSU'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('MUTSU'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('MUTSU'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Janeiro', 'Poda', UPPER('PORTA DA LOJA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Abril a maio', 'Floração', UPPER('PORTA DA LOJA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Colheita', UPPER('PORTA DA LOJA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('REINETTE OU CANADA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('REINETTE OU CANADA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('REINETTE OU CANADA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('REINETTE OU GRAND FAY'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('RISCADINHA DE PALMELA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('RISCADINHA DE PALMELA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('RISCADINHA DE PALMELA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('ROYAL GALA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('ROYAL GALA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('ROYAL GALA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('REDCHIEF'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('REDCHIEF'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('REDCHIEF'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('STARKING'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('STARKING'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('STARKING'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('SUMMER RED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('SUMMER RED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('SUMMER RED'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('WELLSPUR DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('WELLSPUR DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('WELLSPUR DELICIOUS'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('NOIVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('NOIVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('NOIVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('OLHO ABERTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('OLHO ABERTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('OLHO ABERTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('CAMOESA ROSA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('CAMOESA ROSA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('CAMOESA ROSA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('MALAPIO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('MALAPIO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('MALAPIO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GRONHO DOCE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GRONHO DOCE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GRONHO DOCE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PE DE BOI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('PE DE BOI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('PE DE BOI'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PINOVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('PINOVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('PINOVA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PARDO LINDO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('PARDO LINDO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('PARDO LINDO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PIPO DE BASTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('PIPO DE BASTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('PIPO DE BASTO'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('PRIMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('PRIMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('PRIMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('QUERINA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('QUERINA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('QUERINA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('VISTA BELLA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('VISTA BELLA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('VISTA BELLA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GOLDEN SMOOTHEE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GOLDEN SMOOTHEE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GOLDEN SMOOTHEE'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GOLDEN SUPREMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GOLDEN SUPREMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GOLDEN SUPREMA'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('GLOSTER 69'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('GLOSTER 69'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('GLOSTER 69'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Novembro a dezembro', 'Poda', UPPER('FREEDOM'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a abril', 'Floração', UPPER('FREEDOM'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Agosto a setembro', 'Colheita', UPPER('FREEDOM'), 'Macieira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Carson Hybrid'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Red Cored Chantenay'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Imperator 58'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('80 dias', 'Colheita', UPPER('Scarlet Nantes'), 'Cenoura');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Abril a junho', 'Sementeira', UPPER('MAS 24.C'), 'Milho');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a setembro', 'Colheita', UPPER('MAS 24.C'), 'Milho');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Abril a junho', 'Sementeira', UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Julho a setembro', 'Colheita', UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Marco a setembro', 'Sementeira', UPPER('Senhora Conceicao'), 'Nabo greleiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Junho a fevereiro', 'Colheita', UPPER('Senhora Conceicao'), 'Nabo greleiro');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('COBRANCOSA'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('ARBEQUINA'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('HOJIBLANCA'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('NEGRINHA DO FREIXO'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('PICUAL'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('MACANILHA'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('CONSERVA DE ELVAS'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Outubro a novembro', 'Colheita', UPPER('Galega'), 'Oliveira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Fevereiro a abril, agosto a outubro', 'Sementeira', UPPER('S. Cosme'), 'Nabo');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('90 dias', 'Colheita', UPPER('S. Cosme'), 'Nabo');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Dezembro a janeiro', 'Poda', UPPER('Dona Maria'), 'Videira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Maio', 'Floração', UPPER('Dona Maria'), 'Videira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Junho a agosto', 'Colheita', UPPER('Dona Maria'), 'Videira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Dezembro a janeiro', 'Poda', UPPER('Cardinal'), 'Videira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Maio', 'Floração', UPPER('Cardinal'), 'Videira');

INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('Junho a agosto', 'Colheita', UPPER('Cardinal'), 'Videira');

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo da bouça'), UPPER('Amarelo'), TO_DATE('10/10/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')), 1.1, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), TO_DATE('10/04/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Doce Golden Bantam')), 0.9, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo da bouça'), UPPER('Amarelo'), TO_DATE('03/10/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')), 1.1, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), TO_DATE('15/04/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Doce Golden Bantam')), 0.9, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('05/04/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')), 1.2, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('12/10/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')), 1.3, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('03/04/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')), 1.2, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('06/10/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')), 1.3, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('08/04/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')), 1.2, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('12/10/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')), 1.3, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Grande'), UPPER('Galega'), TO_DATE('06/10/2016', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Galega')), 30.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Campo Grande'), UPPER('Picual'), TO_DATE('10/10/2016', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Picual')), 20.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Scarlet Nantes'), TO_DATE('10/03/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Scarlet Nantes')), 0.15, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Nelson Hybrid'), TO_DATE('02/06/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Nelson Hybrid')), 0.1, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('S. Cosme'), TO_DATE('20/09/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('S. Cosme')), 0.2, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), TO_DATE('10/03/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Sugarsnax Hybrid')), 0.15, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Danvers Half Long'), TO_DATE('02/06/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Danvers Half Long')), 0.1, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('S. Cosme'), TO_DATE('20/09/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('S. Cosme')), 0.2, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), TO_DATE('06/03/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Sugarsnax Hybrid')), 0.15, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Nelson Hybrid'), TO_DATE('30/05/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Nelson Hybrid')), 0.15, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Horta Nova'), UPPER('Senhora Conceição'), TO_DATE('20/09/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Senhora Conceição')), 0.25, 'ha', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro da ponte'), UPPER('Jonagored'), TO_DATE('07/01/2017', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Jonagored')), 90.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro da ponte'), UPPER('Fuji'), TO_DATE('08/01/2017', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Fuji')), 60.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro da ponte'), UPPER('Royal Gala'), TO_DATE('08/01/2017', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Royal Gala')), 40.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Lameiro da ponte'), UPPER('Royal Gala'), TO_DATE('10/12/2018', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Royal Gala')), 30.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Vinha'), UPPER('Dona Maria'), TO_DATE('10/01/2018', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Dona Maria')), 500.0, 'un', 0);

INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('Vinha'), UPPER('Cardinal'), TO_DATE('11/01/2018', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Cardinal')), 700.0, 'un', 0);

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('30/03/2021', 'DD/MM/YYYY'), UPPER('Campo da bouça'), UPPER('Amarelo'), TO_DATE('10/10/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('12/08/2021', 'DD/MM/YYYY'), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), TO_DATE('10/04/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Doce Golden Bantam')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('05/04/2022', 'DD/MM/YYYY'), UPPER('Campo da bouça'), UPPER('Amarelo'), TO_DATE('03/10/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('21/08/2022', 'DD/MM/YYYY'), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), TO_DATE('15/04/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Doce Golden Bantam')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('20/08/2020', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('05/04/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('15/03/2021', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('12/10/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('25/08/2021', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('03/04/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('19/03/2022', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('06/10/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('18/08/2022', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('MAS 24.C'), TO_DATE('08/04/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('MAS 24.C')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('20/03/2023', 'DD/MM/YYYY'), UPPER('Campo do poço'), UPPER('Amarelo'), TO_DATE('12/10/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Amarelo')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('15/05/2020', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Scarlet Nantes'), TO_DATE('10/03/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Scarlet Nantes')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('08/09/2020', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), TO_DATE('02/06/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Nelson Hybrid')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('10/01/2021', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('S. Cosme'), TO_DATE('20/09/2020', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('S. Cosme')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('15/05/2021', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), TO_DATE('10/03/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Sugarsnax Hybrid')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('08/09/2021', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Danvers Half Long'), TO_DATE('02/06/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Danvers Half Long')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('10/01/2022', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('S. Cosme'), TO_DATE('20/09/2021', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('S. Cosme')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('16/05/2022', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), TO_DATE('06/03/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Sugarsnax Hybrid')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('05/09/2022', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), TO_DATE('30/05/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Nelson Hybrid')));

INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (TO_DATE('14/01/2023', 'DD/MM/YYYY'), UPPER('Horta Nova'), UPPER('Senhora Conceição'), TO_DATE('20/09/2022', 'DD/MM/YYYY'), (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('Senhora Conceição')));

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (1, 30, TO_DATE('06/10/2016', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (2, 20, TO_DATE('10/10/2016', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (3, 90, TO_DATE('07/01/2017', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (4, 60, TO_DATE('08/01/2017', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (5, 40, TO_DATE('08/01/2017', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (6, 0.4, TO_DATE('03/07/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (7, 0.9, TO_DATE('03/07/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (8, 3, TO_DATE('10/07/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (9, 0.4, TO_DATE('10/08/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (10, 0.9, TO_DATE('10/08/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (11, 3.5, TO_DATE('10/08/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (12, 3, TO_DATE('10/09/2017', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (13, 30, TO_DATE('04/11/2017', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (14, 20, TO_DATE('04/11/2017', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (15, 15, TO_DATE('10/12/2017', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (16, 10, TO_DATE('10/12/2017', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (17, 90, TO_DATE('07/01/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (18, 60, TO_DATE('08/01/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (19, 40, TO_DATE('08/01/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (20, 500, TO_DATE('10/01/2018', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (21, 700, TO_DATE('11/01/2018', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (22, 10, TO_DATE('06/02/2018', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (23, 6, TO_DATE('06/02/2018', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (24, 5, TO_DATE('06/02/2018', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (25, 1, TO_DATE('03/07/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (26, 1.5, TO_DATE('03/07/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (27, 3.5, TO_DATE('10/07/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (28, 6, TO_DATE('10/07/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (29, 1, TO_DATE('10/08/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (30, 1.5, TO_DATE('10/08/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (31, 4, TO_DATE('10/08/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (32, 7, TO_DATE('11/08/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (33, 4, TO_DATE('02/09/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (34, 4, TO_DATE('10/09/2018', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (35, 30, TO_DATE('17/11/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (36, 20, TO_DATE('17/11/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (37, 30, TO_DATE('10/12/2018', 'DD/MM/YYYY'), 'un', 'Plantação', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (38, 500, TO_DATE('16/12/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (39, 700, TO_DATE('18/12/2018', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (40, 90, TO_DATE('07/01/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (41, 60, TO_DATE('08/01/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (42, 40, TO_DATE('08/01/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (43, 2, TO_DATE('20/01/2019', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (44, 2.5, TO_DATE('20/01/2019', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (45, 10, TO_DATE('06/02/2019', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (46, 5, TO_DATE('06/02/2019', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (47, 7, TO_DATE('06/02/2019', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (48, 1, TO_DATE('03/07/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (49, 1.5, TO_DATE('03/07/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (50, 4, TO_DATE('03/07/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (51, 6, TO_DATE('10/07/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (52, 1, TO_DATE('10/08/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (53, 1.5, TO_DATE('10/08/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (54, 4.5, TO_DATE('10/08/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (55, 7, TO_DATE('11/08/2019', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (56, 30, TO_DATE('15/11/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (57, 20, TO_DATE('15/11/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (58, 500, TO_DATE('16/12/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (59, 700, TO_DATE('18/12/2019', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (60, 2, TO_DATE('20/01/2020', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (61, 2.5, TO_DATE('20/01/2020', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (62, 0.9, TO_DATE('12/03/2020', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (63, 600, TO_DATE('30/03/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (64, 1.2, TO_DATE('05/04/2020', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (65, 2200, TO_DATE('05/05/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (66, 1400, TO_DATE('15/05/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (67, 0.6, TO_DATE('02/06/2020', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (68, 1, TO_DATE('03/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (69, 1.5, TO_DATE('03/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (70, 6, TO_DATE('10/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (71, 15, TO_DATE('12/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (72, 2.5, TO_DATE('15/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (73, 15, TO_DATE('28/07/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (74, 1, TO_DATE('10/08/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (75, 1.5, TO_DATE('10/08/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (76, 15, TO_DATE('10/08/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (77, 7, TO_DATE('11/08/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (78, 3.5, TO_DATE('12/08/2020', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (79, 3300, TO_DATE('20/08/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (80, 600, TO_DATE('28/08/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (81, 1800, TO_DATE('07/09/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (82, 0.6, TO_DATE('20/09/2020', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (83, 36, TO_DATE('10/10/2020', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (84, 1.3, TO_DATE('12/10/2020', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (85, 30, TO_DATE('10/11/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (86, 20, TO_DATE('10/11/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (87, 600, TO_DATE('15/11/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (88, 70, TO_DATE('05/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (89, 50, TO_DATE('05/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (90, 10, TO_DATE('10/12/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (91, 7, TO_DATE('10/12/2020', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (92, 40, TO_DATE('15/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (93, 60, TO_DATE('15/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (94, 500, TO_DATE('16/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (95, 2500, TO_DATE('18/12/2020', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (96, 700, TO_DATE('18/12/2020', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (97, 2900, TO_DATE('04/01/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (98, 2, TO_DATE('20/01/2021', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (99, 2.5, TO_DATE('20/01/2021', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (100, 0.9, TO_DATE('10/03/2021', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (101, 1.3, TO_DATE('14/03/2021', 'DD/MM/YYYY'), 'ha', 'Incorporação no solo', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (102, 1.3, TO_DATE('30/03/2021', 'DD/MM/YYYY'), 'ha', 'Incorporação no solo', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (103, 1.2, TO_DATE('03/04/2021', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (104, 30, TO_DATE('15/04/2021', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (105, 10, TO_DATE('02/05/2021', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (106, 2200, TO_DATE('05/05/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (107, 1400, TO_DATE('15/05/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (108, 0.6, TO_DATE('02/06/2021', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (109, 3, TO_DATE('20/06/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (110, 0.8, TO_DATE('03/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (111, 1.5, TO_DATE('03/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (112, 5, TO_DATE('05/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (113, 3, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (114, 7, TO_DATE('10/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (115, 15, TO_DATE('12/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (116, 300, TO_DATE('15/07/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (117, 400, TO_DATE('20/07/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (118, 15, TO_DATE('24/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (119, 5.5, TO_DATE('30/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (120, 3.5, TO_DATE('30/07/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (121, 15, TO_DATE('07/08/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (122, 0.8, TO_DATE('10/08/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (123, 1.5, TO_DATE('10/08/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (124, 3300, TO_DATE('12/08/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (125, 3, TO_DATE('17/08/2021', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (126, 900, TO_DATE('24/08/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (127, 3300, TO_DATE('25/08/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (128, 600, TO_DATE('28/08/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (129, 800, TO_DATE('05/09/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (130, 1800, TO_DATE('07/09/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (131, 800, TO_DATE('12/09/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (132, 0.6, TO_DATE('20/09/2021', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (133, 1200, TO_DATE('23/09/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (134, 36, TO_DATE('03/10/2021', 'DD/MM/YYYY'), 'NS', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (135, 1.3, TO_DATE('06/10/2021', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (136, 950, TO_DATE('12/10/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (137, 750, TO_DATE('03/11/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (138, 210, TO_DATE('10/11/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (139, 120, TO_DATE('10/11/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (140, 600, TO_DATE('15/11/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (141, 30, TO_DATE('17/11/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (142, 20, TO_DATE('17/11/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (143, 70, TO_DATE('28/11/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (144, 90, TO_DATE('03/12/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (145, 500, TO_DATE('16/12/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (146, 60, TO_DATE('18/12/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (147, 2500, TO_DATE('18/12/2021', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (148, 700, TO_DATE('18/12/2021', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (149, 2900, TO_DATE('04/01/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (150, 3, TO_DATE('20/01/2022', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (151, 3.5, TO_DATE('20/01/2022', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (152, 0.9, TO_DATE('06/03/2022', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (153, 1.3, TO_DATE('19/03/2022', 'DD/MM/YYYY'), 'ha', 'Incorporação no solo', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (154, 1.3, TO_DATE('05/04/2022', 'DD/MM/YYYY'), 'ha', 'Incorporação no solo', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (155, 1.2, TO_DATE('08/04/2022', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (156, 30, TO_DATE('15/04/2022', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (157, 2250, TO_DATE('05/05/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (158, 10, TO_DATE('13/05/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (159, 1300, TO_DATE('15/05/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (160, 0.6, TO_DATE('30/05/2022', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (161, 3, TO_DATE('05/06/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (162, 3, TO_DATE('30/06/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (163, 5.5, TO_DATE('02/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (164, 0.8, TO_DATE('03/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (165, 1.5, TO_DATE('03/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (166, 5, TO_DATE('10/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (167, 15, TO_DATE('12/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (168, 3, TO_DATE('15/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (169, 600, TO_DATE('15/07/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (170, 500, TO_DATE('20/07/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (171, 15, TO_DATE('24/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (172, 5, TO_DATE('30/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (173, 2.5, TO_DATE('30/07/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (174, 15, TO_DATE('07/08/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (175, 0.8, TO_DATE('10/08/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (176, 1.5, TO_DATE('10/08/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (177, 1200, TO_DATE('12/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (178, 600, TO_DATE('12/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (179, 3500, TO_DATE('17/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (180, 3, TO_DATE('17/08/2022', 'DD/MM/YYYY'), 'm3', 'Rega', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (181, 3300, TO_DATE('18/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (182, 950, TO_DATE('20/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (183, 650, TO_DATE('24/08/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (184, 1900, TO_DATE('05/09/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (185, 830, TO_DATE('07/09/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (186, 750, TO_DATE('11/09/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (187, 1150, TO_DATE('20/09/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (188, 0.6, TO_DATE('20/09/2022', 'DD/MM/YYYY'), 'kg', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (189, 1.3, TO_DATE('12/10/2022', 'DD/MM/YYYY'), 'ha', 'Sementeira', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (190, 850, TO_DATE('17/10/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (191, 900, TO_DATE('06/11/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (192, 30, TO_DATE('10/11/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (193, 20, TO_DATE('10/11/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (194, 300, TO_DATE('12/11/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (195, 200, TO_DATE('12/11/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (196, 50, TO_DATE('15/11/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (197, 70, TO_DATE('04/12/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (198, 90, TO_DATE('07/12/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (199, 15, TO_DATE('11/12/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (200, 10, TO_DATE('11/12/2022', 'DD/MM/YYYY'), 'kg', 'Fertilização', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (201, 500, TO_DATE('16/12/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (202, 200, TO_DATE('18/12/2022', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (203, 700, TO_DATE('18/12/2022', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (204, 60, TO_DATE('12/01/2023', 'DD/MM/YYYY'), 'un', 'Poda', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (205, 250, TO_DATE('14/01/2023', 'DD/MM/YYYY'), 'kg', 'Colheita', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (206, 4, TO_DATE('20/01/2023', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (207, 5, TO_DATE('20/01/2023', 'DD/MM/YYYY'), 'kg', 'Aplicação fitofármaco', 'Placeholder');

INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (208, 1.3, TO_DATE('20/03/2023', 'DD/MM/YYYY'), 'ha', 'Incorporação no solo', 'Placeholder');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (1, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (2, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (3, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (4, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (5, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (6, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (7, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (8, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (9, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (10, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (11, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (12, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (13, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (14, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (15, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (16, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (17, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (18, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (19, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (20, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (21, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (22, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (23, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (24, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (25, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (26, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (27, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (28, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (29, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (30, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (31, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (32, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (33, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (34, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (35, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (36, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (37, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (38, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (39, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (40, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (41, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (42, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (43, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (44, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (45, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (46, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (47, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (48, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (49, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (50, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (51, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (52, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (53, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (54, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (55, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (56, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (57, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (58, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (59, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (60, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (61, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (62, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Scarlet Nantes')), UPPER('Horta Nova'), UPPER('Scarlet Nantes'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (64, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (65, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Scarlet Nantes')), UPPER('Horta Nova'), UPPER('Scarlet Nantes'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (66, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Scarlet Nantes')), UPPER('Horta Nova'), UPPER('Scarlet Nantes'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (67, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (68, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (69, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (70, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (71, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (72, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (73, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (74, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (75, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (76, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (77, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (78, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (79, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (80, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (81, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (82, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (83, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo da bouça'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (84, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (85, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (86, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (87, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (88, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (89, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (90, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (91, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (92, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (93, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (94, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (95, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (96, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (97, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (98, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (99, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (100, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (101, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (102, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo da bouça'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (103, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (104, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Doce Golden Bantam')), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (105, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (106, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (107, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (108, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (109, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (110, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (111, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (112, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (113, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (114, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira')), UPPER('Vinha'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Videira'))), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (115, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (116, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (117, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (118, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (119, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (120, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (121, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (122, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (123, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (124, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Doce Golden Bantam')), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (125, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (126, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (127, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (128, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (129, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (130, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Danvers Half Long')), UPPER('Horta Nova'), UPPER('Danvers Half Long'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (131, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (132, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (133, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (134, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo da bouça'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (135, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (136, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (137, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (138, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (139, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (140, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (141, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (142, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (143, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (144, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (145, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (146, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (147, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (148, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (149, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('S. Cosme')), UPPER('Horta Nova'), UPPER('S. Cosme'), 'Nabo');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (150, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (151, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (152, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (153, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (154, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo da bouça'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (155, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (156, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Doce Golden Bantam')), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (157, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (158, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (159, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Sugarsnax Hybrid')), UPPER('Horta Nova'), UPPER('Sugarsnax Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (160, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (161, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (162, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (163, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (164, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (165, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (166, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (167, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (168, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (169, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (170, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (171, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (172, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira')), UPPER('Lameiro da ponte'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE 'Macieira'))), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (173, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (174, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (175, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (176, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (177, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (178, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (179, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo da bouça') AND UPPER(variedadePlanta) LIKE UPPER('Doce Golden Bantam')), UPPER('Campo da bouça'), UPPER('Doce Golden Bantam'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (180, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (181, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('MAS 24.C')), UPPER('Campo do poço'), UPPER('MAS 24.C'), 'Milho');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (182, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (183, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (184, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Nelson Hybrid')), UPPER('Horta Nova'), UPPER('Nelson Hybrid'), 'Cenoura');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (185, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (186, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (187, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (188, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Senhora Conceição')), UPPER('Horta Nova'), UPPER('Senhora Conceição'), 'Nabo greleiro');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (189, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (190, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (191, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (192, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (193, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (194, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (195, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (196, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Senhora Conceição')), UPPER('Horta Nova'), UPPER('Senhora Conceição'), 'Nabo greleiro');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (197, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Royal Gala')), UPPER('Lameiro da ponte'), UPPER('Royal Gala'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (198, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Jonagored')), UPPER('Lameiro da ponte'), UPPER('Jonagored'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (199, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Galega')), UPPER('Campo Grande'), UPPER('Galega'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (200, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo Grande') AND UPPER(variedadePlanta) LIKE UPPER('Picual')), UPPER('Campo Grande'), UPPER('Picual'), 'Oliveira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (201, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (202, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Senhora Conceição')), UPPER('Horta Nova'), UPPER('Senhora Conceição'), 'Nabo greleiro');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (203, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (204, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Lameiro da ponte') AND UPPER(variedadePlanta) LIKE UPPER('Fuji')), UPPER('Lameiro da ponte'), UPPER('Fuji'), 'Macieira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (205, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Horta Nova') AND UPPER(variedadePlanta) LIKE UPPER('Senhora Conceição')), UPPER('Horta Nova'), UPPER('Senhora Conceição'), 'Nabo greleiro');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (206, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Dona Maria')), UPPER('Vinha'), UPPER('Dona Maria'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (207, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Vinha') AND UPPER(variedadePlanta) LIKE UPPER('Cardinal')), UPPER('Vinha'), UPPER('Cardinal'), 'Videira');

INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (208, (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('Campo do poço') AND UPPER(variedadePlanta) LIKE UPPER('Amarelo')), UPPER('Campo do poço'), UPPER('Amarelo'), 'Tremoço');

INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (63, UPPER('Campo do poço'));

INSERT INTO Stock (stockID, nomeEdificio, quantidade, tipoUnidade) VALUES (0, 'placeholderName', 0, 'm');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Calda Bordalesa ASCENZA', 'Fitofármaco', 'ASCENZA', 'Pó molhável', 0, 'Fungicida');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Enxofre Bayer 80 WG', 'Fitofármaco', 'Bayer', 'Pó molhável', 0, 'Fungicida');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Patentkali', 'Adubo', 'K+S', 'Granulado', 0, 'Adubo solo');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('ESTA Kieserit', 'Adubo', 'K+S', 'Granulado', 0, 'Adubo solo');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('EPSO Microtop', 'Adubo', 'K+S', 'Granulado', 0, 'Adubo foliar+Fertirrega');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('EPSO Top', 'Adubo', 'K+S', 'Granulado', 0, 'Adubo foliar');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Biocal CaCo3', 'Corretor', 'Biocal', 'Granulado', 0, 'Correção solo');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Biocal Composto', 'Corretor', 'Biocal', 'Pó', 0, 'Correção solo');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Sonata', 'Fitofármaco', 'Bayer', 'Líquido', 0, 'Fungicida');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('FLiPPER', 'Fitofármaco', 'Bayer', 'Emulsão de óleo em água', 0, 'Insecticida');

INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('Requiem Prime', 'Fitofármaco', 'Bayer', 'Líquido', 0, 'Insecticida');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 15);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 16);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 22);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 23);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 24);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 43);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 44);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 45);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 46);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('ESTA Kieserit', 47);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 60);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 61);

INSERT INTO AplicacaoFatorProducao (operacaoID, nomeComercialFator) VALUES (63, 'Biocal Composto');

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 90);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 91);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 98);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 99);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 105);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 150);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 151);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('EPSO Microtop', 158);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 199);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Patentkali', 200);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 206);

INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('Calda Bordalesa ASCENZA', 207);

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('CU', 'Calda Bordalesa ASCENZA', 0.2, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('S', 'Enxofre Bayer 80 WG', 0.8, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('K', 'Patentkali', 0.249, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Mg', 'Patentkali', 0.06, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('S', 'Patentkali', 0.176, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Mg', 'ESTA Kieserit', 0.151, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('S', 'ESTA Kieserit', 0.208, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Mg', 'EPSO Microtop', 0.09, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('S', 'EPSO Microtop', 0.124, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('B', 'EPSO Microtop', 0.009, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Mn', 'EPSO Microtop', 0.01, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Mg', 'EPSO Top', 0.096, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('S', 'EPSO Top', 0.13, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('CaCO3', 'Biocal CaCo3', 0.882, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('MgCO3', 'Biocal CaCo3', 0.019, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('CaCO3', 'Biocal Composto', 0.717, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('MgCO3', 'Biocal Composto', 0.148, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('MgO', 'Biocal Composto', 0.079, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Bacillus pumilus', 'Sonata', 0.9774, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Ácidos gordos (na forma de sais de potássio)', 'FLiPPER', 0.478, '%');

INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('Terpenóides', 'Requiem Prime', 0.1442, '%');

