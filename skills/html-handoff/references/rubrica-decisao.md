# Rubrica de decisão — HTML × markdown × entregável canônico

## Limiar (quando HTML vence)
HTML quando **ambos**:
1. o output é para um **humano ler/navegar** (não para diff, índice, pipeline ou outro agente); **e**
2. ao menos **um sinal de riqueza**:
   - passaria de ~80–100 linhas de markdown
   - contém comparação / lado-a-lado
   - pede diagrama, gráfico ou SVG
   - tem hierarquia / seções a navegar
   - ganha com interatividade (filtro, toggle, colapso, drill-down)
   - tem layout espacial (linha do tempo, board, mapa)
   - é painel de status / métricas

## Modos
- **Proativa (faz e avisa):** artefato claramente visual. Gera o `.html`, salva, abre e avisa. O usuário pode pedir markdown.
- **Oferece e confirma:** ambíguo ou baixo custo. Pergunta antes ("isso fica melhor como HTML — quer que eu gere?").
- **Texto (nem oferece):** ver exclusões.

## Exclusões (permanece em texto/markdown)
- fonte colaborativa/diffável/versionada: README, comentários de código, mensagem de commit, descrição de PR destinada ao GitHub
- consumido por pipeline / outro agente / indexador
- resposta conversacional no terminal
- destino que já renderiza markdown (chat, GitHub) e não um navegador
- usuário pediu texto/markdown explicitamente

## Guarda — entregável canônico ou domínio sensível
Quando existe peça oficial ou o domínio é sensível:
- HTML é **derivado/auxiliar** — nunca substitui o entregável canônico.
- **Sem suposição:** proveniência preservada, nada inventado.
- Autocontido e sem expor mais do que o necessário.
