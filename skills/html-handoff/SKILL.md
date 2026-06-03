---
name: html-handoff
description: Emite um artefato HTML autocontido (em vez de uma parede de markdown) quando o output é um documento longo/complexo que um humano vai LER e NAVEGAR. Use ao produzir plano, spec, review de código, comparação de opções, relatório, dashboard, design system, explicação longa, ou quando o usuário disser "explica", "me mostra", "compara", "visualiza", "faz um HTML", "documenta isso". NÃO use para chat curto, README, mensagem de commit, descrição de PR, ou saída consumida por pipeline/outro agente.
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
- **Abra no navegador** após gerar:
  - Windows: `Start-Process "<arquivo>.html"`
  - macOS: `open "<arquivo>.html"` · Linux: `xdg-open "<arquivo>.html"`
- Avise o usuário com o caminho do arquivo e um resumo do que foi montado.

## Invariantes

- **Um único arquivo**, CSS e JS inline, sem CDN de assets (exceção única: o `<script>` do Mermaid).
- **Sem suposição:** não invente dados; preserve proveniência do conteúdo de origem.
- O HTML é um **artefato derivado/descartável**; a fonte de verdade continua sendo o documento/origem.
