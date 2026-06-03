# Diagramas (Mermaid)

## Regra
Se a relação é **sequência, ramificação, dependência, estado ou linha do tempo**, **desenhe** — não descreva em prosa.

| Relação | Tipo Mermaid |
|---|---|
| processo / cascata | `flowchart` |
| dependências / consumo entre componentes | `flowchart LR` / `graph` |
| máquina de estados | `stateDiagram-v2` |
| pipeline em camadas / interações | `sequenceDiagram` |
| fases / cronograma | `gantt` |
| modelo de dados | `classDiagram` |

## Entrega — CDN pinado + fallback legível
- Inclua **uma** dependência externa (a única permitida): o script do Mermaid via CDN com **versão pinada**:

```html
<script src="https://cdn.jsdelivr.net/npm/mermaid@11.4.1/dist/mermaid.min.js"></script>
```

- Escreva cada diagrama dentro de `<pre class="mermaid">…source…</pre>`. Se o CDN não carregar (offline), o `<pre>` mostra o **source legível** — fallback grátis.
- Inicialize com `startOnLoad:false` e renderize por aba:

```html
<script>
const prefersDark = matchMedia && matchMedia('(prefers-color-scheme: dark)').matches;
if (window.mermaid) mermaid.initialize({ startOnLoad:false, theme: prefersDark?'dark':'default', securityLevel:'strict' });
function renderDiagrams(section){
  if(!window.mermaid||!section) return;
  const nodes = section.querySelectorAll('pre.mermaid:not([data-processed])');
  if(nodes.length) mermaid.run({ nodes });
}
</script>
```

## Cuidados
- `securityLevel:'strict'` é o padrão seguro. Evite `<br/>` em labels (em strict pode não quebrar linha); prefira labels curtos de uma linha.
- Estilize `pre.mermaid` para o fallback parecer intencional e limpe a borda após render: `pre.mermaid[data-processed="true"]{ text-align:center }`.

## Escape manual (raro)
Se o usuário pedir um arquivo **100% offline**, vendorize a lib (cole o conteúdo de `mermaid.min.js` num `<script>` inline) **naquele** arquivo. Não é o padrão.
