---
name: write-skill
description: Write or edit an agent skill. Use when creating a skill, promoting one, or fixing a skill that misfires.
---

# Write a skill

- One skill = one procedure. The trigger to load it lives in `description`; the body holds the steps and what done looks like.
- `description` is a trigger, not a summary: write it as "Use when …", matching the moment to load the skill.
- Keep it short.
- State the target, not the ban: "write one-line comments" rather than "do not write long comments". Naming a banned behaviour raises its salience.
- Avoid failure modes: duplication across files, restating the environment, sediment, no-ops the model already obeys, vague completion criteria.
- Match the structure of the skills already in `.agents/skills`.

Done: the skill loads on the right trigger, and a fresh agent can follow it with no extra context.
