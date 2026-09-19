---
name: worktrunk
description: Isolate work in a git worktree with worktrunk (`wt`). Use when starting parallel or experimental work that should not touch the main checkout.
---

# Work in a worktree

- Create and enter a worktree for a branch: `wt switch --create <branch>`.
- Switch to an existing one: `wt switch <branch>`. List them: `wt list`.
- Keep plans and scratch files in `.scratch/` inside the worktree.
- Clean up once the branch is merged: `wt remove`.
- Do not touch the main checkout's working tree from inside a worktree.

Done: the work happens on its own worktree, and the main checkout is untouched.
