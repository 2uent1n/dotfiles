---
name: open-pr
description: Prepare or open a pull request from the current branch. Use when I ask for a PR title, a description, or to open the PR.
---

# Open a PR

1. Verify state first. Confirm the branch is pushed and contains only what I mean.
2. Title: descriptive, starts with a capital letter, no Conventional Commits prefix.
3. Description: one sentence, then a few bullet points if needed. No bloat, no "verify" section, no exhaustive "changes" section. If unrelated changes are voluntarily slipped in, a bullet names them.
4. Show me title and description in chat. On my explicit go, `gh pr create` against `main`. Open as "Open", never as "Draft".
5. Never push or open a PR unasked.

Done: title and description approved in chat; PR open only if I said so.