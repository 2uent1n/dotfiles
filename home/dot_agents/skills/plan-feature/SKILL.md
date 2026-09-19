---
name: plan-feature
description: Plan a non-trivial feature or change before implementation. Use when the task needs options, tradeoffs, or a written plan I must approve.
---

# Plan a feature

1. Read the relevant code first. Name the files that already do something similar, if any.
2. Map the current flow in ASCII.
3. For an external dependency, read its docs on the web, or its code in the Go module cache or node_modules.
4. Bring the real options: tradeoffs and a recommendation, as many as the task actually has. State what you could not decide and why.
5. Ask what you cannot answer from the code. I answer many questions willingly: batch them 5-6 per round.
6. A first concise plan draft goes in-chat, with the open questions. Once I am explicitly satisfied, write the complete plan to a `.md` at the repo root: steps, files, decisions with their rationale, options considered and rejected.
7. The plan file is self-contained: a fresh agent holding only AGENTS.md files and the skills must not need to re-verify what you already verified.
8. When I approve the plan, do not implement. Write the implementing agent's prompt:
    - slim: no rules, no directions (those live in AGENTS.md and skills, and it gets them automatically;
    - a pointer: implement X, plan is at Y, nothing else;
    - hand it over without me asking.

Done: I approve a written `.md` plan, and a prompt is ready for the implementing agent.