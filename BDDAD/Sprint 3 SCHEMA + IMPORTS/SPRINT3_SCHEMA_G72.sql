DROP TABLE AplicacaoFatorProducao CASCADE CONSTRAINTS;
DROP TABLE Colheita CASCADE CONSTRAINTS;
DROP TABLE ComposicaoMix CASCADE CONSTRAINTS;
DROP TABLE ComposicaoQuimica CASCADE CONSTRAINTS;
DROP TABLE CulturaInstalada CASCADE CONSTRAINTS;
DROP TABLE diaColheita CASCADE CONSTRAINTS;
DROP TABLE Edificio CASCADE CONSTRAINTS;
DROP TABLE EspeciePlanta CASCADE CONSTRAINTS;
DROP TABLE EstadoFenologico CASCADE CONSTRAINTS;
DROP TABLE EstadoOperacao CASCADE CONSTRAINTS;
DROP TABLE Fabricante CASCADE CONSTRAINTS;
DROP TABLE FatorProducao CASCADE CONSTRAINTS;
DROP TABLE Fertirrega CASCADE CONSTRAINTS;
DROP TABLE Formulacao CASCADE CONSTRAINTS;
DROP TABLE HistorialOperacoes CASCADE CONSTRAINTS;
DROP TABLE Maquina CASCADE CONSTRAINTS;
DROP TABLE MaquinaUsada CASCADE CONSTRAINTS;
DROP TABLE MetodoAplicacaoFator CASCADE CONSTRAINTS;
DROP TABLE MixFertirrega CASCADE CONSTRAINTS;
DROP TABLE Operacao CASCADE CONSTRAINTS;
DROP TABLE OperacaoCultura CASCADE CONSTRAINTS;
DROP TABLE OperacaoParcela CASCADE CONSTRAINTS;
DROP TABLE OperacoesRealizadas CASCADE CONSTRAINTS;
DROP TABLE Operario CASCADE CONSTRAINTS;
DROP TABLE Parcela CASCADE CONSTRAINTS;
DROP TABLE PeriodicidadeFenologica CASCADE CONSTRAINTS;
DROP TABLE Planta CASCADE CONSTRAINTS;
DROP TABLE PlantacaoPermanente CASCADE CONSTRAINTS;
DROP TABLE Producao CASCADE CONSTRAINTS;
DROP TABLE Produto CASCADE CONSTRAINTS;
DROP TABLE Quimico CASCADE CONSTRAINTS;
DROP TABLE SectorRega CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE TipoEdificio CASCADE CONSTRAINTS;
DROP TABLE TipoEstadoFenologico CASCADE CONSTRAINTS;
DROP TABLE TipoFator CASCADE CONSTRAINTS;
DROP TABLE TipoOperacao CASCADE CONSTRAINTS;
DROP TABLE Unidade CASCADE CONSTRAINTS;


CREATE TABLE AplicacaoFatorProducao (
  nomeComercialFator varchar2(50) NOT NULL, 
  operacaoID         number(10) NOT NULL, 
  PRIMARY KEY (nomeComercialFator, 
  operacaoID));
CREATE TABLE Colheita (
  operacaoID number(10) NOT NULL, 
  produtoID  number(10) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  produtoID));
CREATE TABLE ComposicaoMix (
  idMix              number(10) NOT NULL, 
  nomeComercialFator varchar2(50) NOT NULL, 
  proporcao          number(10) NOT NULL, 
  tipoUnidade        varchar2(50) NOT NULL, 
  PRIMARY KEY (idMix, 
  nomeComercialFator));
CREATE TABLE ComposicaoQuimica (
  notacaoQuimica     varchar2(100) NOT NULL, 
  nomeComercialFator varchar2(50) NOT NULL, 
  quantidade         number(4, 2) NOT NULL, 
  tipoUnidade        varchar2(50) NOT NULL, 
  PRIMARY KEY (notacaoQuimica, 
  nomeComercialFator));
CREATE TABLE CulturaInstalada (
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  quantidade      number(10) NOT NULL, 
  tipoUnidade     varchar2(50) NOT NULL, 
  sectorID        nvarchar2(2) NOT NULL, 
  PRIMARY KEY (nomeParcela, 
  variedadePlanta, 
  diaCultivacao, 
  nomeComumPlanta));
CREATE TABLE diaColheita (
  diaColheita     date NOT NULL, 
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (diaColheita));
CREATE TABLE Edificio (
  nomeEdificio     varchar2(50) NOT NULL, 
  dimensaoEdificio number(10) NOT NULL, 
  nomeTipoEdificio varchar2(50) NOT NULL, 
  tipoUnidade      varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeEdificio));
CREATE TABLE EspeciePlanta (
  especie         varchar2(50) NOT NULL, 
  variedade       varchar2(50) NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (especie));
CREATE TABLE EstadoFenologico (
  intervaloTempo       nvarchar2(50) NOT NULL, 
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  PRIMARY KEY (intervaloTempo, 
  nomeEstadoFenologico));
CREATE TABLE EstadoOperacao (
  nomeEstadoOperacao nvarchar2(255) NOT NULL, 
  PRIMARY KEY (nomeEstadoOperacao));
CREATE TABLE Fabricante (
  nomeFabricante nvarchar2(255) NOT NULL, 
  PRIMARY KEY (nomeFabricante));
CREATE TABLE FatorProducao (
  nomeComercialFator    varchar2(50) NOT NULL, 
  nomeTipoFatorProducao varchar2(50) NOT NULL, 
  nomeFabricante        nvarchar2(255) NOT NULL, 
  estadoFisico          varchar2(50) NOT NULL, 
  stockID               number(10) NOT NULL, 
  metodoAplicacaoFator  nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeComercialFator));
CREATE TABLE Fertirrega (
  operacaoID number(10) NOT NULL, 
  idMix      number(10) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  idMix));
CREATE TABLE Formulacao (
  estadoFisico varchar2(50) NOT NULL, 
  PRIMARY KEY (estadoFisico));
CREATE TABLE HistorialOperacoes (
  idLog                number(10) NOT NULL, 
  operacaoID           number(10) NOT NULL, 
  diaOperacao          date NOT NULL, 
  dataRegisto          date NOT NULL, 
  quantidade           number(10) NOT NULL, 
  tipoUnidade          nvarchar2(255) NOT NULL, 
  tipoOperacaoAgricola nvarchar2(255) NOT NULL, 
  nomeEstadoOperacao   nvarchar2(255) NOT NULL, 
  infoAdicional        nvarchar2(255), 
  PRIMARY KEY (idLog));
CREATE TABLE Maquina (
  idMaquina    number(10) GENERATED AS IDENTITY, 
  nomeMaquina  nvarchar2(50) NOT NULL, 
  nomeEdificio varchar2(50) NOT NULL, 
  PRIMARY KEY (idMaquina));
CREATE TABLE MaquinaUsada (
  OperacaooperacaoID number(10) NOT NULL, 
  MaquinaidMaquina   number(10) NOT NULL, 
  PRIMARY KEY (OperacaooperacaoID, 
  MaquinaidMaquina));
CREATE TABLE MetodoAplicacaoFator (
  nomeMetodoAplicacao nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeMetodoAplicacao));
CREATE TABLE MixFertirrega (
  idMix number(10) NOT NULL, 
  PRIMARY KEY (idMix));
CREATE TABLE Operacao (
  operacaoID         number(10) NOT NULL, 
  quantidade         number(10) NOT NULL, 
  diaOperacao        date NOT NULL, 
  dataRegisto        timestamp(0) DEFAULT SYSDATE NOT NULL, 
  tipoUnidade        varchar2(50) NOT NULL, 
  tipoOperacao       varchar2(50) NOT NULL, 
  nomeEstadoOperacao nvarchar2(255) NOT NULL, 
  PRIMARY KEY (operacaoID));
CREATE TABLE OperacaoCultura (
  operacaoID      number(10) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID));
CREATE TABLE OperacaoParcela (
  operacaoID  number(10) NOT NULL, 
  nomeParcela varchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID));
CREATE TABLE OperacoesRealizadas (
  operacaoID       number(10) NOT NULL, 
  nomeroCCOperario number(10) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  nomeroCCOperario));
CREATE TABLE Operario (
  numeroCCOperario number(10) GENERATED AS IDENTITY, 
  nomeOperario     nvarchar2(50), 
  PRIMARY KEY (numeroCCOperario));
CREATE TABLE Parcela (
  nomeParcela varchar2(50) NOT NULL, 
  areaParcela number(10) NOT NULL, 
  tipoUnidade varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeParcela));
CREATE TABLE PeriodicidadeFenologica (
  intervaloTempo       nvarchar2(50) NOT NULL, 
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  variedadePlanta      varchar2(50) NOT NULL, 
  nomeComumPlanta      varchar2(50) NOT NULL, 
  PRIMARY KEY (intervaloTempo, 
  nomeEstadoFenologico, 
  variedadePlanta, 
  nomeComumPlanta));
CREATE TABLE Planta (
  variedade       varchar2(50) NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (variedade, 
  nomeComumPlanta));
CREATE TABLE PlantacaoPermanente (
  operacaoID          number(10) NOT NULL, 
  distanciaEntreFilas number(10) NOT NULL, 
  compasso            number(10) NOT NULL, 
  PRIMARY KEY (operacaoID));
CREATE TABLE Producao (
  produtoID       number(10) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (produtoID, 
  variedadePlanta, 
  nomeComumPlanta));
CREATE TABLE Produto (
  produtoID number(10) NOT NULL, 
  name      varchar2(50) NOT NULL, 
  stockID   number(10) NOT NULL, 
  PRIMARY KEY (produtoID));
CREATE TABLE Quimico (
  notacaoQuimica varchar2(100) NOT NULL, 
  PRIMARY KEY (notacaoQuimica));
CREATE TABLE SectorRega (
  sectorID nvarchar2(2) NOT NULL, 
  PRIMARY KEY (sectorID));
CREATE TABLE Stock (
  stockID      number(10) NOT NULL, 
  nomeEdificio varchar2(50) NOT NULL, 
  quantidade   number(10) NOT NULL, 
  tipoUnidade  varchar2(50) NOT NULL, 
  PRIMARY KEY (stockID));
CREATE TABLE TipoEdificio (
  nomeTipoEdificio varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeTipoEdificio));
CREATE TABLE TipoEstadoFenologico (
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeEstadoFenologico));
CREATE TABLE TipoFator (
  nomeTipoFatorProducao varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeTipoFatorProducao));
CREATE TABLE TipoOperacao (
  tipoOperacao varchar2(50) NOT NULL, 
  PRIMARY KEY (tipoOperacao));
CREATE TABLE Unidade (
  tipoUnidade varchar2(50) NOT NULL, 
  PRIMARY KEY (tipoUnidade));
ALTER TABLE PlantacaoPermanente ADD CONSTRAINT FKPlantacaoP26917 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE Fertirrega ADD CONSTRAINT FKFertirrega74507 FOREIGN KEY (idMix) REFERENCES MixFertirrega (idMix);
ALTER TABLE Fertirrega ADD CONSTRAINT FKFertirrega179170 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE ComposicaoMix ADD CONSTRAINT FKComposicao777880 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Colheita ADD CONSTRAINT FKColheita502796 FOREIGN KEY (produtoID) REFERENCES Produto (produtoID);
ALTER TABLE Colheita ADD CONSTRAINT FKColheita857625 FOREIGN KEY (operacaoID) REFERENCES OperacaoCultura (operacaoID);
ALTER TABLE ComposicaoMix ADD CONSTRAINT FKComposicao956991 FOREIGN KEY (nomeComercialFator) REFERENCES FatorProducao (nomeComercialFator);
ALTER TABLE ComposicaoMix ADD CONSTRAINT FKComposicao329375 FOREIGN KEY (idMix) REFERENCES MixFertirrega (idMix);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns577673 FOREIGN KEY (sectorID) REFERENCES SectorRega (sectorID);
ALTER TABLE Produto ADD CONSTRAINT FKProduto942297 FOREIGN KEY (stockID) REFERENCES Stock (stockID);
ALTER TABLE EspeciePlanta ADD CONSTRAINT FKEspeciePla957291 FOREIGN KEY (variedade, nomeComumPlanta) REFERENCES Planta (variedade, nomeComumPlanta);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao850942 FOREIGN KEY (nomeEstadoOperacao) REFERENCES EstadoOperacao (nomeEstadoOperacao);
ALTER TABLE diaColheita ADD CONSTRAINT FKdiaColheit528737 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta);
ALTER TABLE PeriodicidadeFenologica ADD CONSTRAINT FKPeriodicid470161 FOREIGN KEY (intervaloTempo, nomeEstadoFenologico) REFERENCES EstadoFenologico (intervaloTempo, nomeEstadoFenologico);
ALTER TABLE PeriodicidadeFenologica ADD CONSTRAINT FKPeriodicid152222 FOREIGN KEY (variedadePlanta, nomeComumPlanta) REFERENCES Planta (variedade, nomeComumPlanta);
ALTER TABLE EstadoFenologico ADD CONSTRAINT FKEstadoFeno532067 FOREIGN KEY (nomeEstadoFenologico) REFERENCES TipoEstadoFenologico (nomeEstadoFenologico);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu69023 FOREIGN KEY (metodoAplicacaoFator) REFERENCES MetodoAplicacaoFator (nomeMetodoAplicacao);
ALTER TABLE Maquina ADD CONSTRAINT FKMaquina759219 FOREIGN KEY (nomeEdificio) REFERENCES Edificio (nomeEdificio);
ALTER TABLE MaquinaUsada ADD CONSTRAINT FKMaquinaUsa763578 FOREIGN KEY (MaquinaidMaquina) REFERENCES Maquina (idMaquina);
ALTER TABLE MaquinaUsada ADD CONSTRAINT FKMaquinaUsa817973 FOREIGN KEY (OperacaooperacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE OperacoesRealizadas ADD CONSTRAINT FKOperacoesR846691 FOREIGN KEY (nomeroCCOperario) REFERENCES Operario (numeroCCOperario);
ALTER TABLE OperacoesRealizadas ADD CONSTRAINT FKOperacoesR499750 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE Stock ADD CONSTRAINT FKStock307537 FOREIGN KEY (nomeEdificio) REFERENCES Edificio (nomeEdificio);
ALTER TABLE Producao ADD CONSTRAINT FKProducao411850 FOREIGN KEY (variedadePlanta, nomeComumPlanta) REFERENCES Planta (variedade, nomeComumPlanta);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns491717 FOREIGN KEY (variedadePlanta, nomeComumPlanta) REFERENCES Planta (variedade, nomeComumPlanta);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns753417 FOREIGN KEY (nomeParcela) REFERENCES Parcela (nomeParcela);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns839248 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE OperacaoCultura ADD CONSTRAINT FKOperacaoCu155704 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao889898 FOREIGN KEY (nomeComercialFator) REFERENCES FatorProducao (nomeComercialFator);
ALTER TABLE OperacaoParcela ADD CONSTRAINT FKOperacaoPa42292 FOREIGN KEY (nomeParcela) REFERENCES Parcela (nomeParcela);
ALTER TABLE OperacaoParcela ADD CONSTRAINT FKOperacaoPa291116 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE OperacaoCultura ADD CONSTRAINT FKOperacaoCu760621 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao210195 FOREIGN KEY (tipoOperacao) REFERENCES TipoOperacao (tipoOperacao);
ALTER TABLE AplicacaoFatorProducao ADD CONSTRAINT FKAplicacaoF991635 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao979856 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Producao ADD CONSTRAINT FKProducao597858 FOREIGN KEY (produtoID) REFERENCES Produto (produtoID);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao653180 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Parcela ADD CONSTRAINT FKParcela116678 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Stock ADD CONSTRAINT FKStock124429 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu891399 FOREIGN KEY (stockID) REFERENCES Stock (stockID);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu194777 FOREIGN KEY (estadoFisico) REFERENCES Formulacao (estadoFisico);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao808600 FOREIGN KEY (notacaoQuimica) REFERENCES Quimico (notacaoQuimica);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu572318 FOREIGN KEY (nomeFabricante) REFERENCES Fabricante (nomeFabricante);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu198787 FOREIGN KEY (nomeTipoFatorProducao) REFERENCES TipoFator (nomeTipoFatorProducao);
ALTER TABLE Edificio ADD CONSTRAINT FKEdificio278425 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE AplicacaoFatorProducao ADD CONSTRAINT FKAplicacaoF588924 FOREIGN KEY (nomeComercialFator) REFERENCES FatorProducao (nomeComercialFator);
ALTER TABLE Edificio ADD CONSTRAINT FKEdificio870582 FOREIGN KEY (nomeTipoEdificio) REFERENCES TipoEdificio (nomeTipoEdificio);
