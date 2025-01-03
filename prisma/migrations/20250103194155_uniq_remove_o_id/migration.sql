/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `cc_alteracaodadotacaoorcamentaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_anulacaodeempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_cancelamentoderp` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_competencia` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_contagenerica` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_creditosapagar` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_devedorcredorfornecedor` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_disponibilidadefinanceira` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_domiciliobancario` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_dotacaoorcamentaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_emissaodeempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_identificadordereceitas` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_inscricaoderp` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_liquidacaodeempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_liquidacaoderp` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_orgaoconcessor` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_orgaorecebedor` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_pagamentoderp` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_pagamentoempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_previsaoarrecadacaodareceitaorcamentaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `cc_receitaaarrecadar` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigoaplicacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigocateeconomica` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigoelemdespesa` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigoevento` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigofebraban` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigofuncao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigomodaaplicacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigonatudespesa` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigoreceorcamentaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigosubedespesa` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_codigosubfuncao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_naturezacargo` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_statusfolha` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoagenpolitico` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoalteorcamentaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoanulempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoatojuridico` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoatopessoal` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipocompfontrecurso` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoconcbancaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipocontbancaria` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipocredor` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipodatavigencia` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipodocumento` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoempenho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoescolaridade` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoestacivil` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoevento` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipofolha` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipofontrecurso` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoidcl` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoioc` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipolanccontabil` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipomotiinativacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipomovicontabil` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiponatulancamento` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoocupacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoorigretencao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipoprograma` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipopublicacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporegiconsignacao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporegidomibancario` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporegiprevidencia` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporegitrabalho` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporelaparentesco` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporestpagar` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiporetencao` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tiposexo` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id]` on the table `ti_tipovinculo` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "cc_alteracaodadotacaoorcamentaria_descricao_key";

-- DropIndex
DROP INDEX "cc_anulacaodeempenho_descricao_key";

-- DropIndex
DROP INDEX "cc_cancelamentoderp_descricao_key";

-- DropIndex
DROP INDEX "cc_competencia_descricao_key";

-- DropIndex
DROP INDEX "cc_contagenerica_descricao_key";

-- DropIndex
DROP INDEX "cc_creditosapagar_descricao_key";

-- DropIndex
DROP INDEX "cc_devedorcredorfornecedor_descricao_key";

-- DropIndex
DROP INDEX "cc_disponibilidadefinanceira_descricao_key";

-- DropIndex
DROP INDEX "cc_domiciliobancario_descricao_key";

-- DropIndex
DROP INDEX "cc_dotacaoorcamentaria_descricao_key";

-- DropIndex
DROP INDEX "cc_emissaodeempenho_descricao_key";

-- DropIndex
DROP INDEX "cc_identificadordereceitas_descricao_key";

-- DropIndex
DROP INDEX "cc_inscricaoderp_descricao_key";

-- DropIndex
DROP INDEX "cc_liquidacaodeempenho_descricao_key";

-- DropIndex
DROP INDEX "cc_liquidacaoderp_descricao_key";

-- DropIndex
DROP INDEX "cc_orgaoconcessor_descricao_key";

-- DropIndex
DROP INDEX "cc_orgaorecebedor_descricao_key";

-- DropIndex
DROP INDEX "cc_pagamentoderp_descricao_key";

-- DropIndex
DROP INDEX "cc_pagamentoempenho_descricao_key";

-- DropIndex
DROP INDEX "cc_previsaoarrecadacaodareceitaorcamentaria_descricao_key";

-- DropIndex
DROP INDEX "cc_receitaaarrecadar_descricao_key";

-- DropIndex
DROP INDEX "ti_codigoaplicacao_descricao_key";

-- DropIndex
DROP INDEX "ti_codigocateeconomica_descricao_key";

-- DropIndex
DROP INDEX "ti_codigoelemdespesa_descricao_key";

-- DropIndex
DROP INDEX "ti_codigoevento_descricao_key";

-- DropIndex
DROP INDEX "ti_codigofebraban_descricao_key";

-- DropIndex
DROP INDEX "ti_codigofuncao_descricao_key";

-- DropIndex
DROP INDEX "ti_codigomodaaplicacao_descricao_key";

-- DropIndex
DROP INDEX "ti_codigonatudespesa_descricao_key";

-- DropIndex
DROP INDEX "ti_codigoreceorcamentaria_descricao_key";

-- DropIndex
DROP INDEX "ti_codigosubedespesa_descricao_key";

-- DropIndex
DROP INDEX "ti_codigosubfuncao_descricao_key";

-- DropIndex
DROP INDEX "ti_naturezacargo_descricao_key";

-- DropIndex
DROP INDEX "ti_statusfolha_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoacao_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoagenpolitico_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoalteorcamentaria_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoanulempenho_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoatojuridico_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoatopessoal_descricao_key";

-- DropIndex
DROP INDEX "ti_tipocompfontrecurso_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoconcbancaria_descricao_key";

-- DropIndex
DROP INDEX "ti_tipocontbancaria_descricao_key";

-- DropIndex
DROP INDEX "ti_tipocredor_descricao_key";

-- DropIndex
DROP INDEX "ti_tipodatavigencia_descricao_key";

-- DropIndex
DROP INDEX "ti_tipodocumento_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoempenho_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoescolaridade_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoestacivil_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoevento_descricao_key";

-- DropIndex
DROP INDEX "ti_tipofolha_descricao_key";

-- DropIndex
DROP INDEX "ti_tipofontrecurso_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoidcl_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoioc_descricao_key";

-- DropIndex
DROP INDEX "ti_tipolanccontabil_descricao_key";

-- DropIndex
DROP INDEX "ti_tipomotiinativacao_descricao_key";

-- DropIndex
DROP INDEX "ti_tipomovicontabil_descricao_key";

-- DropIndex
DROP INDEX "ti_tiponatulancamento_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoocupacao_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoorigretencao_descricao_key";

-- DropIndex
DROP INDEX "ti_tipoprograma_descricao_key";

-- DropIndex
DROP INDEX "ti_tipopublicacao_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporegiconsignacao_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporegidomibancario_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporegiprevidencia_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporegitrabalho_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporelaparentesco_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporestpagar_descricao_key";

-- DropIndex
DROP INDEX "ti_tiporetencao_descricao_key";

-- DropIndex
DROP INDEX "ti_tiposexo_descricao_key";

-- DropIndex
DROP INDEX "ti_tipovinculo_descricao_key";

-- CreateIndex
CREATE UNIQUE INDEX "cc_alteracaodadotacaoorcamentaria_id_key" ON "cc_alteracaodadotacaoorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_anulacaodeempenho_id_key" ON "cc_anulacaodeempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_cancelamentoderp_id_key" ON "cc_cancelamentoderp"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_competencia_id_key" ON "cc_competencia"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_contagenerica_id_key" ON "cc_contagenerica"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_creditosapagar_id_key" ON "cc_creditosapagar"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_devedorcredorfornecedor_id_key" ON "cc_devedorcredorfornecedor"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_disponibilidadefinanceira_id_key" ON "cc_disponibilidadefinanceira"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_domiciliobancario_id_key" ON "cc_domiciliobancario"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_dotacaoorcamentaria_id_key" ON "cc_dotacaoorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_emissaodeempenho_id_key" ON "cc_emissaodeempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_identificadordereceitas_id_key" ON "cc_identificadordereceitas"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_inscricaoderp_id_key" ON "cc_inscricaoderp"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_liquidacaodeempenho_id_key" ON "cc_liquidacaodeempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_liquidacaoderp_id_key" ON "cc_liquidacaoderp"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_orgaoconcessor_id_key" ON "cc_orgaoconcessor"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_orgaorecebedor_id_key" ON "cc_orgaorecebedor"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_pagamentoderp_id_key" ON "cc_pagamentoderp"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_pagamentoempenho_id_key" ON "cc_pagamentoempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_previsaoarrecadacaodareceitaorcamentaria_id_key" ON "cc_previsaoarrecadacaodareceitaorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "cc_receitaaarrecadar_id_key" ON "cc_receitaaarrecadar"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoaplicacao_id_key" ON "ti_codigoaplicacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigocateeconomica_id_key" ON "ti_codigocateeconomica"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoelemdespesa_id_key" ON "ti_codigoelemdespesa"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoevento_id_key" ON "ti_codigoevento"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigofebraban_id_key" ON "ti_codigofebraban"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigofuncao_id_key" ON "ti_codigofuncao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigomodaaplicacao_id_key" ON "ti_codigomodaaplicacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigonatudespesa_id_key" ON "ti_codigonatudespesa"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigoreceorcamentaria_id_key" ON "ti_codigoreceorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigosubedespesa_id_key" ON "ti_codigosubedespesa"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_codigosubfuncao_id_key" ON "ti_codigosubfuncao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_naturezacargo_id_key" ON "ti_naturezacargo"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_statusfolha_id_key" ON "ti_statusfolha"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoacao_id_key" ON "ti_tipoacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoagenpolitico_id_key" ON "ti_tipoagenpolitico"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoalteorcamentaria_id_key" ON "ti_tipoalteorcamentaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoanulempenho_id_key" ON "ti_tipoanulempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoatojuridico_id_key" ON "ti_tipoatojuridico"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoatopessoal_id_key" ON "ti_tipoatopessoal"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocompfontrecurso_id_key" ON "ti_tipocompfontrecurso"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoconcbancaria_id_key" ON "ti_tipoconcbancaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocontbancaria_id_key" ON "ti_tipocontbancaria"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipocredor_id_key" ON "ti_tipocredor"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipodatavigencia_id_key" ON "ti_tipodatavigencia"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipodocumento_id_key" ON "ti_tipodocumento"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoempenho_id_key" ON "ti_tipoempenho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoescolaridade_id_key" ON "ti_tipoescolaridade"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoestacivil_id_key" ON "ti_tipoestacivil"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoevento_id_key" ON "ti_tipoevento"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipofolha_id_key" ON "ti_tipofolha"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipofontrecurso_id_key" ON "ti_tipofontrecurso"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoidcl_id_key" ON "ti_tipoidcl"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoioc_id_key" ON "ti_tipoioc"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipolanccontabil_id_key" ON "ti_tipolanccontabil"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipomotiinativacao_id_key" ON "ti_tipomotiinativacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipomovicontabil_id_key" ON "ti_tipomovicontabil"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiponatulancamento_id_key" ON "ti_tiponatulancamento"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoocupacao_id_key" ON "ti_tipoocupacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoorigretencao_id_key" ON "ti_tipoorigretencao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipoprograma_id_key" ON "ti_tipoprograma"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipopublicacao_id_key" ON "ti_tipopublicacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegiconsignacao_id_key" ON "ti_tiporegiconsignacao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegidomibancario_id_key" ON "ti_tiporegidomibancario"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegiprevidencia_id_key" ON "ti_tiporegiprevidencia"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporegitrabalho_id_key" ON "ti_tiporegitrabalho"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporelaparentesco_id_key" ON "ti_tiporelaparentesco"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporestpagar_id_key" ON "ti_tiporestpagar"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiporetencao_id_key" ON "ti_tiporetencao"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tiposexo_id_key" ON "ti_tiposexo"("id");

-- CreateIndex
CREATE UNIQUE INDEX "ti_tipovinculo_id_key" ON "ti_tipovinculo"("id");
