# House-style — apresentação de documento longo

## Direção: clareza, não a estética da frontend-design
A `frontend-design` é **doadora de craft** (espaçamento, paleta por variável CSS, motion contido), **nunca** direção estética.

| frontend-design prega | Nós (documento longo) decidimos |
|---|---|
| Estética bold/maximalista, "inesquecível" | Invertido: clareza e compreensão > impacto |
| Evitar fontes de sistema; usar webfonts | Invertido: stack de sistema, zero webfont/CDN de fonte |
| Layouts assimétricos, grid-breaking | Invertido: hierarquia previsível, escaneável |
| Variáveis CSS para paleta coesa | Mantido |
| Motion com propósito, CSS-only | Mantido, com contenção |
| Densidade controlada / espaço negativo | Mantido |

## Restrições duras (invariantes)
1. **Autocontido:** um único `.html`; todo CSS em `<style>`, todo JS inline; **sem CDN de assets** (fontes, ícones, frameworks). Exceção única: o `<script>` do Mermaid.
2. **Legibilidade primeiro:** stack de fonte de sistema (`system-ui, -apple-system, "Segoe UI", Roboto, Arial, sans-serif`), contraste adequado, responsivo, tema claro/escuro via `prefers-color-scheme`, `@media print`.
3. **Cor semântica:** cor comunica significado (estado, categoria), não decoração.
4. **Data-driven:** dados num objeto `DATA` + funções de render — mantém legível e re-legível por uma IA depois.
5. **Sem engessar:** boilerplate é ponto de partida; blocos são cardápio; paleta trocável por domínio. Sugira, não obrigue.

## Padrão de cores (variáveis base)
Use `:root{ --bg --card --line --txt --muted --accent }` + um bloco `@media (prefers-color-scheme: dark)` redefinindo as mesmas variáveis. Cores semânticas adicionais conforme o domínio (`--ok --bad --warn` e categorias).
