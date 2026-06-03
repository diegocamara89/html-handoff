# html-handoff

Plugin Claude Code que **auto-ativa** uma skill para emitir **artefatos HTML autocontidos** — em vez de paredes de markdown — quando o output é um documento longo que um humano vai **ler e navegar**.

> Tese: explicar algo complicado para alguém com pouco conhecimento, ajudando a entender. **Clareza > beleza.**
> Inspirado em "The Unreasonable Effectiveness of HTML" (Thariq Shihipar).

## O que faz
- Reconhece (por gatilho na skill + nudge de início de sessão) quando um output ganha como HTML.
- Gera um único `.html` autocontido (CSS/JS inline, sem CDN de assets exceto Mermaid), salvo na pasta de trabalho e aberto no navegador.
- Desenha fluxos/dependências/estados/tempo com **Mermaid** (CDN pinado + fallback legível).

## Quando NÃO faz
Chat curto, README, mensagem de commit, descrição de PR, ou saída consumida por pipeline/outro agente. Detalhes em `skills/html-handoff/references/rubrica-decisao.md`.

## Instalação (marketplace local)
```
/plugin marketplace add C:\Users\marce\Diego\html-handoff
/plugin install html-handoff
```
Reinicie a sessão; o nudge de `SessionStart` passa a aparecer.

> Requisito Windows: Git for Windows (fornece `bash.exe`), usado pelo wrapper `hooks/run-hook.cmd`.

## Estrutura
- `skills/html-handoff/SKILL.md` — a skill
- `skills/html-handoff/references/` — rubrica, house-style, blocos, diagramas
- `skills/html-handoff/assets/` — boilerplate + exemplo canônico
- `hooks/` — wrapper polyglot + script do nudge

## Modelo reutilizável — skill "always-on quando aplicável"
Padrão para criar futuras skills auto-ativadas:
1. `SKILL.md` com `description` rica em gatilhos (o quê + quando).
2. Hook `SessionStart` injetando um **nudge curtíssimo** que aponta para a skill (camada de confiabilidade), via wrapper polyglot `run-hook.cmd`.
3. **Rubrica de decisão** em `references/`, mantida **fora** do nudge (custo de contexto mínimo).
4. **Exclusões explícitas** — tão importantes quanto os gatilhos.

## Licença
MIT
