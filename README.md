# APS 2 — Dossie de Arquitetura Viva

## Sistema de Gestao de Estagios UniSenai

**Funcionalidade:** Algoritmo de Conciliacao (Match) de Competencias e Assinatura de Contrato.

## 1. Apresentacao

Este trabalho documenta a arquitetura de referencia da funcionalidade de conciliacao de competencias e assinatura de contratos do Sistema de Gestao de Estagios UniSenai.

## 2. Descricao da funcionalidade

Estudantes cadastram competencias e empresas cadastram vagas com requisitos. O sistema compara essas informacoes e calcula um indice de compatibilidade. Apos a selecao de uma oportunidade, o contrato e gerado e encaminhado para assinatura eletronica.

## 3. Tecnologias propostas

- Front-end: React
- Back-end: Node.js
- Banco de dados: PostgreSQL 16
- Comunicacao: HTTP/REST e JSON
- Integracao: servico externo de assinatura eletronica
- Diagramas: Mermaid
- Modelo C4 complementar: Structurizr DSL

## 4. Diagramas

### 4.1 Sequencia

Arquivo: `docs/diagrams/sequencia.mmd`

### 4.2 Atividades

Arquivo: `docs/diagrams/atividades.mmd`

### 4.3 Estados

Arquivo: `docs/diagrams/estados.mmd`

### 4.4 Arquitetura C4

Arquivo: `docs/diagrams/arquitetura-c4.mmd`

Modelo complementar: `docs/architecture/workspace.dsl`

## 5. Decisao arquitetural

ADR 0001: `docs/architecture/adr-0001.md`

## 6. Consideracoes finais

A documentacao representa o comportamento e a arquitetura proposta para a conciliacao de competencias e gerenciamento de contratos. O uso de diagramas declarativos facilita a manutencao, o versionamento e a evolucao dos modelos.

**Observacao:** As tecnologias e os fluxos sao propostas de referencia e devem ser conferidos com a implementacao real da equipe.
