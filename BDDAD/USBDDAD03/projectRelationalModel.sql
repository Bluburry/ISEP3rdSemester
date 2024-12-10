CREATE TABLE Edificio (
  nomeEdificio     varchar2(50) NOT NULL, 
  dimensaoEdificio number(10) NOT NULL, 
  nomeTipoEdificio varchar2(50) NOT NULL, 
  tipoUnidade      varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeEdificio));
CREATE TABLE Parcela (
  nomeParcela varchar2(50) NOT NULL, 
  areaParcela number(10) NOT NULL, 
  tipoUnidade varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeParcela));
CREATE TABLE Planta (
  variedade       varchar2(50) NOT NULL, 
  especie         varchar2(50) NOT NULL, 
  nomeComumPlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (variedade));
CREATE TABLE Quimico (
  notacaoQuimica varchar2(50) NOT NULL, 
  PRIMARY KEY (notacaoQuimica));
CREATE TABLE Fabricante (
  nomeFabricante varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeFabricante));
CREATE TABLE FatorProducao (
  nomeComercialFator    varchar2(50) NOT NULL, 
  nomeTipoFatorProducao varchar2(50) NOT NULL, 
  nomeFabricante        varchar2(50) NOT NULL, 
  estadoFisico          varchar2(50) NOT NULL, 
  stockID               number(10) NOT NULL, 
  nomeEdificio          varchar2(50) NOT NULL, 
  metodoAplicacaoFator  nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeComercialFator));
CREATE TABLE Produto (
  produtoID    number(10) NOT NULL, 
  name         varchar2(50) NOT NULL, 
  stockID      number(10) NOT NULL, 
  nomeEdificio varchar2(50) NOT NULL, 
  PRIMARY KEY (produtoID));
CREATE TABLE Unidade (
  tipoUnidade varchar2(50) NOT NULL, 
  PRIMARY KEY (tipoUnidade));
CREATE TABLE Stock (
  stockID      number(10) NOT NULL, 
  nomeEdificio varchar2(50) NOT NULL, 
  quantidade   number(10) NOT NULL, 
  tipoUnidade  varchar2(50) NOT NULL, 
  PRIMARY KEY (stockID, 
  nomeEdificio));
CREATE TABLE Formulacao (
  estadoFisico varchar2(50) NOT NULL, 
  PRIMARY KEY (estadoFisico));
CREATE TABLE TipoFator (
  nomeTipoFatorProducao varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeTipoFatorProducao));
CREATE TABLE TipoEdificio (
  nomeTipoEdificio varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeTipoEdificio));
CREATE TABLE AplicacaoFatorProducao (
  nomeComercialFator varchar2(50) NOT NULL, 
  operacaoID         number(10) NOT NULL, 
  quantidade         number(10) NOT NULL, 
  tipoUnidade        varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeComercialFator, 
  operacaoID));
CREATE TABLE ComposicaoQuimica (
  notacaoQuimica     varchar2(50) NOT NULL, 
  nomeComercialFator varchar2(50) NOT NULL, 
  quantidade         number(4, 2) NOT NULL, 
  tipoUnidade        varchar2(50) NOT NULL, 
  PRIMARY KEY (notacaoQuimica, 
  nomeComercialFator));
CREATE TABLE ColheitaPrevista (
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  semana          varchar2(20) NOT NULL, 
  quantidade      number(10) NOT NULL, 
  PRIMARY KEY (nomeParcela, 
  variedadePlanta, 
  diaCultivacao));
CREATE TABLE Producao (
  produtoID       number(10) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (produtoID, 
  variedadePlanta));
CREATE TABLE Operacao (
  operacaoID   number(10) NOT NULL, 
  quantidade   number(10) NOT NULL, 
  diaOperacao  date NOT NULL, 
  tipoUnidade  varchar2(50) NOT NULL, 
  tipoOperacao varchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID));
CREATE TABLE OperacaoCultura (
  operacaoID      number(10) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  diaCultivacao, 
  nomeParcela, 
  variedadePlanta));
CREATE TABLE TipoOperacao (
  tipoOperacao varchar2(50) NOT NULL, 
  PRIMARY KEY (tipoOperacao));
CREATE TABLE OperacaoParcela (
  operacaoID  number(10) NOT NULL, 
  nomeParcela varchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  nomeParcela));
CREATE TABLE CulturaInstalada (
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  quantidade      number(10) NOT NULL, 
  tipoUnidade     varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeParcela, 
  variedadePlanta, 
  diaCultivacao));
CREATE TABLE SectorRega (
  sectorID nvarchar2(2) NOT NULL, 
  PRIMARY KEY (sectorID));
CREATE TABLE Sector_CulturaInstalada (
  sectorID        nvarchar2(2) NOT NULL, 
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  PRIMARY KEY (sectorID, 
  nomeParcela, 
  variedadePlanta, 
  diaCultivacao));
CREATE TABLE Operario (
  numeroCCOperario number(10) GENERATED AS IDENTITY, 
  nomeOperario     nvarchar2(50), 
  PRIMARY KEY (numeroCCOperario));
CREATE TABLE OperacoesRealizadas (
  operacaoID       number(10) NOT NULL, 
  nomeroCCOperario number(10) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  nomeroCCOperario));
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
CREATE TABLE Instrumento (
  nomeInstrumento nvarchar2(50) NOT NULL, 
  Edificio        varchar2(50) NOT NULL, 
  PRIMARY KEY (nomeInstrumento));
CREATE TABLE InstrumentoUsado (
  operacaoID      number(10) NOT NULL, 
  nomeInstrumento nvarchar2(50) NOT NULL, 
  PRIMARY KEY (operacaoID, 
  nomeInstrumento));
CREATE TABLE MetodoAplicacaoFator (
  nomeMetodoAplicacao nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeMetodoAplicacao));
CREATE TABLE EstadoFenologico (
  intervaloTempo       nvarchar2(50) NOT NULL, 
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  PRIMARY KEY (intervaloTempo, 
  nomeEstadoFenologico));
CREATE TABLE TipoEstadoFenologico (
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  PRIMARY KEY (nomeEstadoFenologico));
CREATE TABLE PeriodicidadeFenologica (
  intervaloTempo       nvarchar2(50) NOT NULL, 
  nomeEstadoFenologico nvarchar2(50) NOT NULL, 
  variedadePlanta      varchar2(50) NOT NULL, 
  PRIMARY KEY (intervaloTempo, 
  nomeEstadoFenologico, 
  variedadePlanta));
CREATE TABLE diaColheita (
  diaColheita     date NOT NULL, 
  nomeParcela     varchar2(50) NOT NULL, 
  variedadePlanta varchar2(50) NOT NULL, 
  diaCultivacao   date NOT NULL, 
  PRIMARY KEY (diaColheita));
ALTER TABLE Edificio ADD CONSTRAINT FKEdificio870582 FOREIGN KEY (nomeTipoEdificio) REFERENCES TipoEdificio (nomeTipoEdificio);
ALTER TABLE AplicacaoFatorProducao ADD CONSTRAINT FKAplicacaoF588924 FOREIGN KEY (nomeComercialFator) REFERENCES FatorProducao (nomeComercialFator);
ALTER TABLE Edificio ADD CONSTRAINT FKEdificio278425 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu198787 FOREIGN KEY (nomeTipoFatorProducao) REFERENCES TipoFator (nomeTipoFatorProducao);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu572318 FOREIGN KEY (nomeFabricante) REFERENCES Fabricante (nomeFabricante);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao808600 FOREIGN KEY (notacaoQuimica) REFERENCES Quimico (notacaoQuimica);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu194777 FOREIGN KEY (estadoFisico) REFERENCES Formulacao (estadoFisico);
ALTER TABLE Produto ADD CONSTRAINT FKProduto955087 FOREIGN KEY (stockID, nomeEdificio) REFERENCES Stock (stockID, nomeEdificio);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu5986 FOREIGN KEY (stockID, nomeEdificio) REFERENCES Stock (stockID, nomeEdificio);
ALTER TABLE Stock ADD CONSTRAINT FKStock124429 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Parcela ADD CONSTRAINT FKParcela116678 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao653180 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE Producao ADD CONSTRAINT FKProducao597858 FOREIGN KEY (produtoID) REFERENCES Produto (produtoID);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao979856 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE AplicacaoFatorProducao ADD CONSTRAINT FKAplicacaoF991635 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao210195 FOREIGN KEY (tipoOperacao) REFERENCES TipoOperacao (tipoOperacao);
ALTER TABLE OperacaoCultura ADD CONSTRAINT FKOperacaoCu760621 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE OperacaoParcela ADD CONSTRAINT FKOperacaoPa291116 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE OperacaoParcela ADD CONSTRAINT FKOperacaoPa42292 FOREIGN KEY (nomeParcela) REFERENCES Parcela (nomeParcela);
ALTER TABLE ComposicaoQuimica ADD CONSTRAINT FKComposicao889898 FOREIGN KEY (nomeComercialFator) REFERENCES FatorProducao (nomeComercialFator);
ALTER TABLE ColheitaPrevista ADD CONSTRAINT FKColheitaPr172352 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao);
ALTER TABLE OperacaoCultura ADD CONSTRAINT FKOperacaoCu911294 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns839248 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns753417 FOREIGN KEY (nomeParcela) REFERENCES Parcela (nomeParcela);
ALTER TABLE CulturaInstalada ADD CONSTRAINT FKCulturaIns575281 FOREIGN KEY (variedadePlanta) REFERENCES Planta (variedade);
ALTER TABLE Producao ADD CONSTRAINT FKProducao344851 FOREIGN KEY (variedadePlanta) REFERENCES Planta (variedade);
ALTER TABLE Stock ADD CONSTRAINT FKStock307537 FOREIGN KEY (nomeEdificio) REFERENCES Edificio (nomeEdificio);
ALTER TABLE Sector_CulturaInstalada ADD CONSTRAINT FKSector_Cul301513 FOREIGN KEY (sectorID) REFERENCES SectorRega (sectorID);
ALTER TABLE Sector_CulturaInstalada ADD CONSTRAINT FKSector_Cul465546 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao);
ALTER TABLE OperacoesRealizadas ADD CONSTRAINT FKOperacoesR499750 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE OperacoesRealizadas ADD CONSTRAINT FKOperacoesR846691 FOREIGN KEY (nomeroCCOperario) REFERENCES Operario (numeroCCOperario);
ALTER TABLE MaquinaUsada ADD CONSTRAINT FKMaquinaUsa817973 FOREIGN KEY (OperacaooperacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE MaquinaUsada ADD CONSTRAINT FKMaquinaUsa763578 FOREIGN KEY (MaquinaidMaquina) REFERENCES Maquina (idMaquina);
ALTER TABLE InstrumentoUsado ADD CONSTRAINT FKInstrument545846 FOREIGN KEY (operacaoID) REFERENCES Operacao (operacaoID);
ALTER TABLE InstrumentoUsado ADD CONSTRAINT FKInstrument101810 FOREIGN KEY (nomeInstrumento) REFERENCES Instrumento (nomeInstrumento);
ALTER TABLE Maquina ADD CONSTRAINT FKMaquina759219 FOREIGN KEY (nomeEdificio) REFERENCES Edificio (nomeEdificio);
ALTER TABLE Instrumento ADD CONSTRAINT FKInstrument986356 FOREIGN KEY (Edificio) REFERENCES Edificio (nomeEdificio);
ALTER TABLE FatorProducao ADD CONSTRAINT FKFatorProdu69023 FOREIGN KEY (metodoAplicacaoFator) REFERENCES MetodoAplicacaoFator (nomeMetodoAplicacao);
ALTER TABLE EstadoFenologico ADD CONSTRAINT FKEstadoFeno532067 FOREIGN KEY (nomeEstadoFenologico) REFERENCES TipoEstadoFenologico (nomeEstadoFenologico);
ALTER TABLE PeriodicidadeFenologica ADD CONSTRAINT FKPeriodicid752369 FOREIGN KEY (variedadePlanta) REFERENCES Planta (variedade);
ALTER TABLE PeriodicidadeFenologica ADD CONSTRAINT FKPeriodicid470161 FOREIGN KEY (intervaloTempo, nomeEstadoFenologico) REFERENCES EstadoFenologico (intervaloTempo, nomeEstadoFenologico);
ALTER TABLE diaColheita ADD CONSTRAINT FKdiaColheit595736 FOREIGN KEY (nomeParcela, variedadePlanta, diaCultivacao) REFERENCES CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao);
ALTER TABLE AplicacaoFatorProducao ADD CONSTRAINT FKAplicacaoF647793 FOREIGN KEY (tipoUnidade) REFERENCES Unidade (tipoUnidade);
