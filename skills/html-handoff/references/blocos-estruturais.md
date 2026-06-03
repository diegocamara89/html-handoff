# Cardápio de blocos estruturais

Blocos reutilizáveis para "documento longo → navegável". **Menu**, não template fixo — combine conforme o conteúdo.

- **Shell:** `header` fixo (título + subtítulo + badges) · `nav.tabs` sticky por seções · `main` com `max-width` (coluna de leitura).
- **Cards de métrica:** grid de números-chave em destaque (`.num b{font-size:26px}`).
- **Cards agrupados por camada/categoria:** com cor semântica na borda esquerda + **filtro** (botões que aplicam classe `.dim` aos que não casam).
- **Painel lateral de drill-down:** clicar num item abre painel fixo à direita com detalhe; `scrim` escurece o fundo; `Esc` fecha.
- **Antes/depois:** dois `.box` lado a lado (`grid 1fr 1fr`), um com borda vermelha (`bad`), outro verde (`good`).
- **Cards de fase/etapa:** borda esquerda colorida, título, linha de dependência, lista de itens; variante `pilot` destacada.
- **Tabela:** para dado tabular denso; `border-collapse`, header com leve tom do accent.
- **Diagramas (Mermaid):** ver `diagramas-mermaid.md`.

## Render por aba (robusto)
Seções inativas usam `display:none`. Renderize diagramas Mermaid **quando a aba fica ativa** (não no load), para evitar problema de dimensão em elemento oculto. Marque processados via `pre.mermaid:not([data-processed])`.
