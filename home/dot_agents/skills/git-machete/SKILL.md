---
name: git-machete
description: Manage stacked branches with git-machete. Use when working on a stack of dependent branches, or syncing a branch with its parent.
---

# Stacked branches

- See the stack and what each branch will rebase/merge onto: `git machete status`.
- Add a branch to the tree: `git machete add <branch>`.
- Rebase, push and pull the whole stack semi-automatically: `git machete traverse`.
- Keep one concern per branch; the stack exists to keep each PR small.

Done: `git machete status` shows the stack in the intended shape, and traverse leaves it synced.
