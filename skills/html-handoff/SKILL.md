---
name: html-handoff
description: Gera um artefato HTML autocontido e navegável (em vez de uma parede de markdown) APENAS quando o output esperado for substancial e visual — tipicamente >80-100 linhas, com hierarquia, comparação, diagrama de fluxo, tabela densa ou painel. Use ao produzir plano de implementação, spec, review extenso de código, comparação multi-critério, relatório, dashboard, design system ou explicação longa; ou quando o usuário pedir explicitamente um HTML/visualização. NÃO use para resposta curta de chat, README, mensagem de commit, descrição de PR, ou saída consumida por pipeline/outro agente.
---

# Skill html-handoff

Produz um único arquivo HTML **autocontido** que apresenta um documento longo como **fluxo visual navegável**, em vez de uma parede de markdown que ninguém lê.

## Princípio-guia (o norte)

> Explicar algo complicado — uma spec, um plano, uma análise — para alguém com pouco conhecimento, ajudando a entender.

Compreensão e acerto vêm **primeiro**. O visual serve à compreensão; não o contrário. **Clareza > beleza.** Quando houver conflito entre impacto estético e clareza, clareza vence.

## Quando ativar (rubrica)

Antes de produzir um artefato substancial, aplique `references/rubrica-decisao.md`. Em resumo:

- **Proativa (faz e avisa):** artefato claramente visual — plano longo, review, comparação, relatório, dashboard, diagrama, design system, deck, explicador.
- **Oferece e confirma:** casos ambíguos ou de baixo custo.
- **Não faça (texto):** chat, conteúdo curto, README/commit/PR, fonte diffável/versionada, saída para pipeline/outro agente, destino que já renderiza markdown.

**Guarda:** havendo entregável canônico (peça oficial) ou domínio sensível, o HTML é **auxiliar** — nunca substitui a peça oficial; sem suposição (proveniência preservada); sem expor mais que o necessário.

## Como construir

1. Comece de `assets/boilerplate.html` (shell autocontido).
2. Siga `references/house-style.md` (restrições duras: autocontido/sem CDN de assets, legibilidade primeiro, cor semântica, claro/escuro, print).
3. Monte com os blocos de `references/blocos-estruturais.md` (cardápio — adapte, não engesse).
4. Para qualquer relação de **sequência, dependência, estado ou tempo**, desenhe com Mermaid seguindo `references/diagramas-mermaid.md` (CDN pinado + fallback legível). Não descreva fluxo em prosa.
5. Veja `assets/examples/arquitetura-exemplo.html` como referência completa do padrão.

## Saída

- Salve um único `.html` na **pasta de trabalho atual** (nome derivado do tópico, ex.: `2026-06-02-<topico>.html`).
- **Abra no navegador** após gerar **quando a sessão for local/interativa** (em ambiente headless/remoto, apenas informe o caminho):
  - Windows: `Start-Process "<arquivo>.html"`
  - macOS: `open "<arquivo>.html"` · Linux: `xdg-open "<arquivo>.html"`
- Avise o usuário com o caminho do arquivo e um resumo do que foi montado.

## Invariantes

- **Um único arquivo**, CSS e JS inline, sem CDN de assets (exceção única: o `<script>` do Mermaid).
- **Sem suposição:** não invente dados; preserve proveniência do conteúdo de origem.
- O HTML é um **artefato derivado/descartável**; a fonte de verdade continua sendo o documento/origem.
