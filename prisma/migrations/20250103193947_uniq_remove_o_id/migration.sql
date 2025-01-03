-- CreateTable
CREATE TABLE "cc_alteracaodadotacaoorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_alteracaodadotacaoorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_anulacaodeempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_anulacaodeempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_cancelamentoderp" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_cancelamentoderp_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_competencia" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_competencia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_contagenerica" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_contagenerica_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_creditosapagar" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_creditosapagar_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_devedorcredorfornecedor" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_devedorcredorfornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_disponibilidadefinanceira" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_disponibilidadefinanceira_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_domiciliobancario" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_domiciliobancario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_dotacaoorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_dotacaoorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_emissaodeempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_emissaodeempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_identificadordereceitas" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_identificadordereceitas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_inscricaoderp" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_inscricaoderp_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_liquidacaodeempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_liquidacaodeempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_liquidacaoderp" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_liquidacaoderp_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_orgaoconcessor" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_orgaoconcessor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_orgaorecebedor" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_orgaorecebedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_pagamentoderp" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_pagamentoderp_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_pagamentoempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_pagamentoempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_previsaoarrecadacaodareceitaorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_previsaoarrecadacaodareceitaorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cc_receitaaarrecadar" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "cc_receitaaarrecadar_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "controle_de_processos" (
    "id" VARCHAR(80) NOT NULL,
    "status" VARCHAR(50),
    "total_itens" INTEGER,
    "qnt_processada" INTEGER,
    "processoreferente" VARCHAR(80),
    "tipo" VARCHAR(50),

    CONSTRAINT "controle_de_processos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "orgao" (
    "id" VARCHAR(50) NOT NULL,
    "bairro" VARCHAR(50),
    "cep" VARCHAR(10),
    "cidade" VARCHAR(50),
    "cnpj" VARCHAR(18),
    "endereco" VARCHAR(200),
    "lastupdate" TIMESTAMP(6),
    "nome" VARCHAR(150),
    "uf" VARCHAR(2),
    "uuid" VARCHAR(50) NOT NULL,
    "emailesic" VARCHAR(150),
    "emailouvidoria" VARCHAR(150),
    "ativo" INTEGER,
    "link" VARCHAR(300),
    "telefoneesic" VARCHAR(40),
    "telefoneouvidoria" VARCHAR(40),
    "localesic" VARCHAR(150),
    "horarioesic" VARCHAR(80),
    "sitehorariofuncionamento" VARCHAR(80),
    "siteemailfalecomnosco" VARCHAR(100),
    "link_instagram" VARCHAR(200),
    "link_facebook" VARCHAR(200),
    "link_whatsapp" VARCHAR(200),

    CONSTRAINT "orgao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_cadastrosauxiliares" (
    "id" VARCHAR(80) NOT NULL,
    "orgao" VARCHAR(80),
    "prestacaodecontas" VARCHAR(80),
    "decreto" VARCHAR(80),

    CONSTRAINT "pc_cadastrosauxiliares_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_competencia" (
    "id" VARCHAR(80) NOT NULL,
    "codigounidadeorcamentaria" VARCHAR(80),
    "anoemisempenho" VARCHAR(6),
    "numeroempenho" VARCHAR(60),
    "numerodocliquidacao" VARCHAR(60),
    "atributofinanceiro" VARCHAR(20),
    "tipoidcl" VARCHAR(20),
    "cpfcnpjfornecedor" VARCHAR(30),
    "tiporegiconsignacao" VARCHAR(20),
    "codigocontcontabil" VARCHAR(40),
    "ano" VARCHAR(6),
    "mes" VARCHAR(4),

    CONSTRAINT "pc_competencia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_conciliacaobancaria" (
    "id" VARCHAR(80) NOT NULL,
    "cadastroauxiliar" VARCHAR(80),
    "codigobanco" VARCHAR(40),
    "codigoagencia" VARCHAR(50),
    "numerocontbancaria" VARCHAR(50),
    "tipocontbancaria" VARCHAR(10),
    "numerosequencial" VARCHAR(40),
    "descricaosobrvaloconciliado" VARCHAR(9000),
    "datafatoconciliado" DATE,
    "numerochequedocumento" VARCHAR(200),
    "numerodebiautomatico" VARCHAR(100),
    "valorconciliado" VARCHAR(100),
    "saldoextrbancoultidiames" VARCHAR(100),
    "saldocontnoultidiames" VARCHAR(100),

    CONSTRAINT "pc_conciliacaobancaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_contacorrente" (
    "id" VARCHAR(80) NOT NULL,
    "tipo" VARCHAR(40),
    "atributo" VARCHAR(80),
    "lancamentocontabilitem" VARCHAR(80),

    CONSTRAINT "pc_contacorrente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_contagenerica" (
    "id" VARCHAR(80) NOT NULL,
    "atributosuperfinanceiro" VARCHAR(20),
    "tipoidcl" VARCHAR(20),
    "codigocontabil" VARCHAR(40),

    CONSTRAINT "pc_contagenerica_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_credorfornecedor" (
    "id" VARCHAR(80) NOT NULL,
    "tipoidcl" VARCHAR(30),
    "cpfcnpjcredor" VARCHAR(30),
    "atributosupefinanceiro" VARCHAR(10),
    "codigocontabil" VARCHAR(60),

    CONSTRAINT "pc_credorfornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_decreto" (
    "id" VARCHAR(80) NOT NULL,
    "datadecreto" DATE,
    "datapubldecreto" DATE,
    "tipopublicacao" VARCHAR(10),
    "numerodecreto" VARCHAR(40),
    "numerolei" VARCHAR(40),
    "anolei" VARCHAR(6),
    "anodecreto" VARCHAR(6),

    CONSTRAINT "pc_decreto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_dispfinanc" (
    "id" VARCHAR(80) NOT NULL,
    "atributosuperfinanceiro" VARCHAR(20),
    "codigocontabil" VARCHAR(40),
    "fr_ioc" VARCHAR(10),
    "fr_tipofontrecurso" VARCHAR(50),
    "fr_tipocompfontrecurso" VARCHAR(50),

    CONSTRAINT "pc_dispfinanc_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_domiciliobancario" (
    "id" VARCHAR(80) NOT NULL,
    "tiporegidomibancario" VARCHAR(20),
    "atributosupefinanceiro" VARCHAR(10),
    "numerocontbancaria" VARCHAR(60),
    "codigoagencia" VARCHAR(60),
    "codigobanco" VARCHAR(60),
    "codigocontabil" VARCHAR(60),
    "fr_ioc" VARCHAR(10),
    "fr_tipofontrecurso" VARCHAR(50),
    "fr_tipocompfontrecurso" VARCHAR(50),

    CONSTRAINT "pc_domiciliobancario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_dotacaoorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "codigounidorcamentaria" VARCHAR(80),
    "codigofuncao" VARCHAR(20),
    "codigoprograma" VARCHAR(20),
    "codigoacao" VARCHAR(20),
    "codigocateeconomica" VARCHAR(20),
    "codigonatudespesa" VARCHAR(20),
    "codigocontabil" VARCHAR(60),
    "codigomodaaplicacao" VARCHAR(20),
    "fr_ioc" VARCHAR(10),
    "fr_tipofontrecurso" VARCHAR(50),
    "fr_tipocompfontrecurso" VARCHAR(50),
    "codigoelemendespesa" VARCHAR(20),

    CONSTRAINT "pc_dotacaoorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_emissaoempenho" (
    "id" VARCHAR(80) NOT NULL,
    "codigounidorcamentaria" VARCHAR(80),
    "numeroempenho" VARCHAR(60),
    "codigocontabil" VARCHAR(80),

    CONSTRAINT "pc_emissaoempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_empenho" (
    "id" VARCHAR(80) NOT NULL,
    "empenho" VARCHAR(80),
    "codigofuncao" VARCHAR(40),
    "codigosubfuncao" VARCHAR(20),
    "codigoprograma" VARCHAR(60),
    "codigoacao" VARCHAR(20),
    "codigocateeconomica" VARCHAR(40),
    "codigonatudespesa" VARCHAR(40),
    "codigomodaaplicacao" VARCHAR(40),
    "codigoelemendespesa" VARCHAR(40),
    "codigosubdespesa" VARCHAR(40),
    "anoemisempenho" VARCHAR(6),
    "cpfcnpjcredor" VARCHAR(30),
    "numeroempenho" VARCHAR(60),
    "dataemisempenho" DATE,
    "historicoempenho" VARCHAR(9000),
    "cpforderdespesa" VARCHAR(30),
    "codigoaplicacao" VARCHAR(60),
    "tipoempenho" VARCHAR(40),
    "numeroconttce" VARCHAR(40),
    "fr_tipofontrecurso" VARCHAR(20),
    "fr_tipocomprecurso" VARCHAR(20),
    "fr_ioc" VARCHAR(20),
    "codigounidadeorcamentaria" VARCHAR(80),
    "valorempenho" VARCHAR(60),
    "processo_id" VARCHAR(80),

    CONSTRAINT "pc_empenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_empenhos" (
    "id" VARCHAR(80) NOT NULL,
    "orgao" VARCHAR(80),
    "prestacaodecontas" VARCHAR(80),

    CONSTRAINT "pc_empenhos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_fonterecurso" (
    "id" VARCHAR(80) NOT NULL,
    "tipofontrecurso" VARCHAR(80),
    "tipocompfontrecurso" VARCHAR(80),
    "ioc" VARCHAR(80),

    CONSTRAINT "pc_fonterecurso_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_fornecedor" (
    "id" VARCHAR(80) NOT NULL,
    "cadastroauxiliar" VARCHAR(80),
    "cpfcnpjfrnecedor" VARCHAR(30),
    "nomedenoourazajuridica" VARCHAR(200),
    "tipocredor" VARCHAR(20),
    "identificadorfornestrangeiro" VARCHAR(200),
    "logradouro" VARCHAR(200),
    "numero" VARCHAR(20),
    "complemento" VARCHAR(100),
    "bairro" VARCHAR(100),
    "numerocep" VARCHAR(12),
    "municipio" VARCHAR(100),
    "estado" VARCHAR(60),
    "telefonefixo" VARCHAR(30),
    "telefonecelular" VARCHAR(30),

    CONSTRAINT "pc_fornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_lancamentocontabilitem" (
    "id" VARCHAR(80) NOT NULL,
    "lancamentocontabil" VARCHAR(80),
    "tiponatulancamento" VARCHAR(20),
    "valorlancado" VARCHAR(100),

    CONSTRAINT "pc_lancamentocontabilitem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_lancamentoscontabeis" (
    "id" VARCHAR(80) NOT NULL,
    "orgao" VARCHAR(80),
    "prestacaodecontas" VARCHAR(80),

    CONSTRAINT "pc_lancamentoscontabeis_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_lancametocontabil" (
    "id" VARCHAR(80) NOT NULL,
    "lancamentocontabil" VARCHAR(80),
    "numeroregilancamento" VARCHAR(60),
    "dataregioulancamento" DATE,
    "tipolancamentocontabil" VARCHAR(20),
    "tipomovicontabil" VARCHAR(20),
    "historicoregicontabil" VARCHAR(9000),

    CONSTRAINT "pc_lancametocontabil_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_liquidacaoempenho" (
    "id" VARCHAR(80) NOT NULL,
    "codigounidorcamentaria" VARCHAR(80),
    "numeroempenho" VARCHAR(60),
    "numerodocliquidacao" VARCHAR(60),
    "dataliquidacao" DATE,
    "tipodocumento" VARCHAR(20),
    "numerodocuhabil" VARCHAR(60),
    "codigocontabil" VARCHAR(40),

    CONSTRAINT "pc_liquidacaoempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_pagamentoempenho" (
    "id" VARCHAR(80) NOT NULL,
    "dadospagamento" VARCHAR(100),
    "codigounidorcamentaria" VARCHAR(80),
    "numeroempenho" VARCHAR(60),
    "numerodocliquidacao" VARCHAR(60),
    "numerodocupagamento" VARCHAR(60),
    "codigoaplicacao" VARCHAR(60),
    "datapagamento" DATE,
    "codigobanco" VARCHAR(60),
    "codigoagencia" VARCHAR(60),
    "numerocontbancaria" VARCHAR(60),
    "codigocontabil" VARCHAR(60),
    "numerocpf" VARCHAR(30),
    "fr_tipofontrecurso" VARCHAR(20),
    "fr_tipocomprecurso" VARCHAR(20),
    "fr_ioc" VARCHAR(20),

    CONSTRAINT "pc_pagamentoempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_prestacoesdecontas" (
    "id" VARCHAR(80) NOT NULL,
    "orgao" VARCHAR(80),
    "cpf_contador" VARCHAR(26),
    "cpf_gestor" VARCHAR(26),
    "ano_referencia" VARCHAR(6),
    "mes_referencia" VARCHAR(4),
    "dia_inic_prest_contas" VARCHAR(4),
    "dia_fin_prest_contas" VARCHAR(4),

    CONSTRAINT "pc_prestacoesdecontas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pc_retencao" (
    "id" VARCHAR(80) NOT NULL,
    "empenho" VARCHAR(80),
    "codigounidorcamentaria" VARCHAR(80),
    "anoemisempenho" VARCHAR(6),
    "numerodoculiquidacao" VARCHAR(50),
    "tiporetencao" VARCHAR(20),
    "cpfcnpjcredor" VARCHAR(30),
    "valorretencao" VARCHAR(40),
    "numeroempenho" VARCHAR(60),
    "tepoorigretencao" VARCHAR(10),
    "processo_id" VARCHAR(80),

    CONSTRAINT "pc_retencao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigoaplicacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigoaplicacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigocateeconomica" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigocateeconomica_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigoelemdespesa" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigoelemdespesa_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigoevento" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigoevento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigofebraban" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigofebraban_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigofuncao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigofuncao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigomodaaplicacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigomodaaplicacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigonatudespesa" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigonatudespesa_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigoreceorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigoreceorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigosubedespesa" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigosubedespesa_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_codigosubfuncao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_codigosubfuncao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_naturezacargo" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_naturezacargo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_statusfolha" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_statusfolha_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoagenpolitico" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoagenpolitico_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoalteorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoalteorcamentaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoanulempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoanulempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoatojuridico" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoatojuridico_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoatopessoal" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoatopessoal_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipocompfontrecurso" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipocompfontrecurso_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoconcbancaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoconcbancaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipocontbancaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipocontbancaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipocredor" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipocredor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipodatavigencia" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipodatavigencia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipodocumento" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipodocumento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoempenho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoempenho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoescolaridade" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoescolaridade_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoestacivil" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoestacivil_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoevento" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoevento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipofolha" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipofolha_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipofontrecurso" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipofontrecurso_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoidcl" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoidcl_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoioc" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoioc_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipolanccontabil" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipolanccontabil_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipomotiinativacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipomotiinativacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipomovicontabil" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipomovicontabil_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiponatulancamento" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiponatulancamento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoocupacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoocupacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoorigretencao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoorigretencao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipoprograma" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipoprograma_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipopublicacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipopublicacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporegiconsignacao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporegiconsignacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporegidomibancario" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporegidomibancario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporegiprevidencia" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporegiprevidencia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporegitrabalho" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporegitrabalho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporelaparentesco" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporelaparentesco_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporestpagar" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporestpagar_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiporetencao" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiporetencao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tiposexo" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tiposexo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ti_tipounidorcamentaria" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),
    "id_increment" SERIAL NOT NULL,

    CONSTRAINT "ti_tipounidorcamentaria_pkey" PRIMARY KEY ("id_increment")
);

-- CreateTable
CREATE TABLE "ti_tipovinculo" (
    "id" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(300),

    CONSTRAINT "ti_tipovinculo_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "cc_alteracaodadotacaoorcamentaria_descricao_key" ON "cc_alteracaodadotacaoorcamentaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_anulacaodeempenho_descricao_key" ON "cc_anulacaodeempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_cancelamentoderp_descricao_key" ON "cc_cancelamentoderp"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_competencia_descricao_key" ON "cc_competencia"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_contagenerica_descricao_key" ON "cc_contagenerica"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_creditosapagar_descricao_key" ON "cc_creditosapagar"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_devedorcredorfornecedor_descricao_key" ON "cc_devedorcredorfornecedor"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_disponibilidadefinanceira_descricao_key" ON "cc_disponibilidadefinanceira"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_domiciliobancario_descricao_key" ON "cc_domiciliobancario"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_dotacaoorcamentaria_descricao_key" ON "cc_dotacaoorcamentaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_emissaodeempenho_descricao_key" ON "cc_emissaodeempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_identificadordereceitas_descricao_key" ON "cc_identificadordereceitas"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_inscricaoderp_descricao_key" ON "cc_inscricaoderp"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_liquidacaodeempenho_descricao_key" ON "cc_liquidacaodeempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_liquidacaoderp_descricao_key" ON "cc_liquidacaoderp"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_orgaoconcessor_descricao_key" ON "cc_orgaoconcessor"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_orgaorecebedor_descricao_key" ON "cc_orgaorecebedor"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_pagamentoderp_descricao_key" ON "cc_pagamentoderp"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_pagamentoempenho_descricao_key" ON "cc_pagamentoempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_previsaoarrecadacaodareceitaorcamentaria_descricao_key" ON "cc_previsaoarrecadacaodareceitaorcamentaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "cc_receitaaarrecadar_descricao_key" ON "cc_receitaaarrecadar"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "controle_de_processos_id_key" ON "controle_de_processos"("id");

-- CreateIndex
CREATE UNIQUE INDEX "orgao_uuid_key" ON "orgao"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "pc_cadastrosauxiliares_prestacaodecontas_key" ON "pc_cadastrosauxiliares"("prestacaodecontas");

-- CreateIndex
CREATE UNIQUE INDEX "pc_competencia_id_key" ON "pc_competencia"("id");

-- CreateIndex
CREATE UNIQUE INDEX "pc_conciliacaobancaria_id_key" ON "pc_conciliacaobancaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoaplicacao_descricao_key" ON "ti_codigoaplicacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigocateeconomica_descricao_key" ON "ti_codigocateeconomica"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoelemdespesa_descricao_key" ON "ti_codigoelemdespesa"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoevento_descricao_key" ON "ti_codigoevento"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigofebraban_descricao_key" ON "ti_codigofebraban"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigofuncao_descricao_key" ON "ti_codigofuncao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigomodaaplicacao_descricao_key" ON "ti_codigomodaaplicacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigonatudespesa_descricao_key" ON "ti_codigonatudespesa"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoreceorcamentaria_descricao_key" ON "ti_codigoreceorcamentaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigosubedespesa_descricao_key" ON "ti_codigosubedespesa"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigosubfuncao_descricao_key" ON "ti_codigosubfuncao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_naturezacargo_descricao_key" ON "ti_naturezacargo"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_statusfolha_descricao_key" ON "ti_statusfolha"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoacao_descricao_key" ON "ti_tipoacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoagenpolitico_descricao_key" ON "ti_tipoagenpolitico"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoalteorcamentaria_descricao_key" ON "ti_tipoalteorcamentaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoanulempenho_descricao_key" ON "ti_tipoanulempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoatojuridico_descricao_key" ON "ti_tipoatojuridico"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoatopessoal_descricao_key" ON "ti_tipoatopessoal"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocompfontrecurso_descricao_key" ON "ti_tipocompfontrecurso"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoconcbancaria_descricao_key" ON "ti_tipoconcbancaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocontbancaria_descricao_key" ON "ti_tipocontbancaria"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocredor_descricao_key" ON "ti_tipocredor"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipodatavigencia_descricao_key" ON "ti_tipodatavigencia"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipodocumento_descricao_key" ON "ti_tipodocumento"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoempenho_descricao_key" ON "ti_tipoempenho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoescolaridade_descricao_key" ON "ti_tipoescolaridade"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoestacivil_descricao_key" ON "ti_tipoestacivil"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoevento_descricao_key" ON "ti_tipoevento"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipofolha_descricao_key" ON "ti_tipofolha"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipofontrecurso_descricao_key" ON "ti_tipofontrecurso"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoidcl_descricao_key" ON "ti_tipoidcl"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoioc_descricao_key" ON "ti_tipoioc"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipolanccontabil_descricao_key" ON "ti_tipolanccontabil"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipomotiinativacao_descricao_key" ON "ti_tipomotiinativacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipomovicontabil_descricao_key" ON "ti_tipomovicontabil"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiponatulancamento_descricao_key" ON "ti_tiponatulancamento"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoocupacao_descricao_key" ON "ti_tipoocupacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoorigretencao_descricao_key" ON "ti_tipoorigretencao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoprograma_descricao_key" ON "ti_tipoprograma"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipopublicacao_descricao_key" ON "ti_tipopublicacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegiconsignacao_descricao_key" ON "ti_tiporegiconsignacao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegidomibancario_descricao_key" ON "ti_tiporegidomibancario"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegiprevidencia_descricao_key" ON "ti_tiporegiprevidencia"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegitrabalho_descricao_key" ON "ti_tiporegitrabalho"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporelaparentesco_descricao_key" ON "ti_tiporelaparentesco"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporestpagar_descricao_key" ON "ti_tiporestpagar"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporetencao_descricao_key" ON "ti_tiporetencao"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiposexo_descricao_key" ON "ti_tiposexo"("descricao");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipounidorcamentaria_id_key" ON "ti_tipounidorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipovinculo_descricao_key" ON "ti_tipovinculo"("descricao");

-- AddForeignKey
ALTER TABLE "pc_cadastrosauxiliares" ADD CONSTRAINT "fk_orgao" FOREIGN KEY ("orgao") REFERENCES "orgao"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_cadastrosauxiliares" ADD CONSTRAINT "fk_prestcntas" FOREIGN KEY ("prestacaodecontas") REFERENCES "pc_prestacoesdecontas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_empenho" ADD CONSTRAINT "fk_empenho" FOREIGN KEY ("empenho") REFERENCES "pc_empenhos"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_empenhos" ADD CONSTRAINT "fk_orgao" FOREIGN KEY ("orgao") REFERENCES "orgao"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_empenhos" ADD CONSTRAINT "fk_prestcntas" FOREIGN KEY ("prestacaodecontas") REFERENCES "pc_prestacoesdecontas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_lancamentoscontabeis" ADD CONSTRAINT "fk_orgao" FOREIGN KEY ("orgao") REFERENCES "orgao"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_lancamentoscontabeis" ADD CONSTRAINT "fk_prestcntas" FOREIGN KEY ("prestacaodecontas") REFERENCES "pc_prestacoesdecontas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_prestacoesdecontas" ADD CONSTRAINT "fk_orgao" FOREIGN KEY ("orgao") REFERENCES "orgao"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pc_retencao" ADD CONSTRAINT "fk_empenho" FOREIGN KEY ("empenho") REFERENCES "pc_empenhos"("id") ON DELETE SET NULL ON UPDATE CASCADE;
