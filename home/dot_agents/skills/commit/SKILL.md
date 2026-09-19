---
name: commit
description: Propose commit titles (and optionally commit) from the current diff. Use when I ask for a commit name, or before a PR is cut.
---

# Commit

1. Read the diff: staged if there is one, otherwise the working tree.
2. If unrelated changes are mixed in, propose a split: one commit per concern, a title for each.
3. Propose 2-3 commit titles: Conventional Commits, title only, no body, no co-authors, 100 chars max, scope = area touched.
4. On my pick: if I asked you to commit, stage exactly what the commit covers (everything under `.scratch/` stays out) and commit. Never push.

Done: I have a title I picked, and the commit (if I asked for it) contains only what it says.
