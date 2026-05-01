# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repository Is

A collection of Claude skill files for the My Ministry Mission podcast hosted by Jason McConnell. Skills are markdown files that define prompts, guardrails, input questions, and output instructions for Claude to follow when producing podcast content.

The only executable code is `podcast-episode/podcast-episode-narrative/generate-docx.py`, which converts a structured JSON file into a formatted Word document using the `python-docx` library.

## Running the DOCX Generator

```
pip install python-docx
python generate-docx.py <episode-json-file>
```

The script requires `Episode TBD.docx` to be present in the same directory as the script. This file is the branded Word style template. The script reads styles from the template rather than defining its own.

## Skill File Structure

Every skill is a `SKILL.md` file with YAML frontmatter:

```markdown
---
name: skill-name
description: One-line description used for indexing and discovery.
---
```

The `name` field must match the folder name exactly. The `description` is used by Claude to decide whether a skill is relevant.

Skills are organized into container folders:

```
foundation/                         required with every skill
podcast-series/                     multi-episode series workflow
podcast-episode/                    standalone episode workflow
podcast-guest/                      guest booking and interview workflow
podcast-publication/                post-production publication pack
```

## Naming Conventions

- Folder names use kebab-case and are prefixed by workflow: `podcast-series-outline`, `podcast-guest-narrative`, etc.
- The `name` field in frontmatter must exactly match the folder name.
- When one skill references another, it uses the `name` value in backticks: `` `podcast-series-planner` ``.
- Cross-references must be updated whenever a skill is renamed.

## Foundation Skill

`foundation/SKILL.md` is not a task skill. It defines shared guardrails, voice, and output standards that all other skills inherit. It must be loaded alongside any task skill. Key rules it enforces:

- No em dashes anywhere in outputs
- No banned AI-slop phrases (see the Banned Patterns section in the file)
- NIV translation for all scripture unless overridden by `BIBLE_TRANSLATION`
- Rule 4: never generate a finished, word-for-word episode script

When editing any skill, check that output instructions do not conflict with foundation skill rules.

## Output Format Conventions

- Skills that produce read-aloud content (narratives) export to Microsoft Word
- Skills that produce reference content (outlines, research briefs, checks) output plain text in the chat
- The `podcast-episode-narrative` skill is the only one that generates a file via an external script rather than direct Word output
- The `podcast-guest-narrative` skill uses emoji section headers; all other skills use plain markdown headings

## Workflow Connections

Skills chain together. When editing a skill's output structure, check whether downstream skills depend on that structure:

```
podcast-series-planner → podcast-series-outline → podcast-series-narrative → podcast-series-context-log
podcast-episode-ideas  → podcast-episode-outline → podcast-episode-narrative
podcast-guest-research → podcast-guest-outline   → podcast-guest-narrative  → podcast-guest-rundown
[any narrative]        → podcast-publication
```

The `podcast-series-outline` skill accepts a context log (from `podcast-series-context-log`) as an optional input to prevent scripture repetition and honor previous episode teasers across a series.
