### 1.1. Análise

Nesta user story é necessário fazer uma funcionalidade que irá pedir ao utilizador vários dados necessários para o
registo de uma operação de cultura, esta US vai ser apenas um intermediário mais intuitivo entre o utilizador
e USBDD13 implementada na base de dados em SQL.

#### **Critérios Aceitação BD11:**

* Não podem ser registadas duas colheitas iguais
* Não podem ser registadas colheitas em parcelas ou culturas inexistentes


### 1.2. Clarificações

**Feitas pelo cliente:**

> Não foi necessário nenhum esclarecimento adicional relevante relativente a esta US.
 

### 1.3. Design

> NOTA : esta funcionalidade sofreu várias alterações de design. No fim chegou-se ao seguinte plano:

#### Criação das classes:

* RegistarOperacationU
* RegisterColheitaUI
* RegisterOperationController
* ColheitaRepository
* Repositories
* UnitsRepository
* DatabaseConnection
* Operacao
* OperacaoCultura

#### Classes utilizadas já existentes:

* Utils
* Main

#### Descrição

A USLP06 segue a convenção de MVC (Model, View, Controller) que apresenta ao utilizador uma interface fácil de operar
que interage com um controlador que serve para isolar a camada profunda de programa que opera a base de dados.

O utilizador é indicado a inserir informações sobre a operação que pretende registar, estas informações são seguidamente
enviadas para a base de dados de sql que faz a sua avaliação e se possível regista a operação pretendido, caso isto
não seja possível é apresentado o problema ao utilizador para ele ser capaz de retificar a sua informação fornecida.