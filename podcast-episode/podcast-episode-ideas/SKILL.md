---
name: podcast-episode-ideas
description: Generates standalone episode ideas for a given theme. Each idea includes a title, overview, key scriptures, themes, and a listener takeaway. These are one-off episodes not tied to a series. Output is plain text in the chat. Use alongside the Research Foundation skill.
---

# Standalone Episode Idea Generator

This skill generates podcast episode ideas for a single theme. These are one-off episodes, not part of a series. Each idea is self-contained and ready to develop further.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Input

Ask the user the following questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"What theme do you want to explore? Give me a word, phrase, or topic."

After receiving the theme, slugify it (lowercase, spaces and special characters replaced with hyphens, multiple hyphens collapsed, leading/trailing hyphens stripped) and check whether `episode-{slug}-draft.json` exists in the current working directory. Do this silently — do not ask the user about it.

- If the file exists, read and parse it.
  - If `ideas.selected_idea` is already set, say: "Found existing draft for this theme with a selected idea: [title]. Do you want to keep it and skip generating new ideas, or generate fresh ideas?" If they keep it, skip Question 2 and proceed directly to the Draft File Output section.
  - If only `ideas.theme` is set (no selected idea), proceed to Question 2 with the theme pre-filled.

**Question 2:**
"How many episode ideas do you want? You can give a specific number (e.g., 5) or a range (e.g., 3–6)."

Once you have all needed answers, generate the ideas immediately. Do not ask any further questions.

---

## Guidelines

- Each episode idea must be Biblically grounded and engaging for listeners.
- Topics should help listeners grow in their understanding of Scripture and how to apply it in everyday life.
- Do not repeat the same concepts across different episode ideas. Each idea should explore a distinct angle on the theme.

---

## Output Format

Generate the number of episode ideas the user requested. If they gave a range, use your judgment to land on the number that best covers the theme without repeating concepts. Use the following structure for each, separated by a divider.

---

**Episode Title:**
A compelling podcast episode title.

**Episode Overview:**
2–3 sentences explaining what the episode will explore and why it matters for Christian life.

**Key Scriptures (3–5):**
Relevant Bible verses in the NIV translation. List each on its own line with the full reference.

**Themes (3–5):**
The main theological or practical themes the episode will explore. List each on its own line.

**Listener Takeaway:**
The key spiritual insight or life application listeners should walk away with. One to two sentences.

---

Repeat for each episode idea.

---

## Draft File Output

After displaying all ideas in chat:

1. Ask: "Which idea do you want to develop? Enter the number."
2. Build the draft filename from the theme: convert to lowercase, replace spaces and special characters with hyphens, collapse multiple hyphens to one, strip leading and trailing hyphens. Example: "Forgiveness and Grace" becomes `forgiveness-and-grace`. Filename: `episode-{slug}-draft.json`. If an existing draft file was loaded on startup, update that file in place.
3. Populate the draft JSON following the schema in `podcast-episode/references/episode-draft-schema.json`:
   - `meta.schema_version` = "1.0"
   - `meta.created_at` = current timestamp (ISO-8601); preserve existing value if updating a draft
   - `meta.last_updated_at` = current timestamp (ISO-8601)
   - `meta.theme`, `meta.theme_slug`, `meta.draft_file`, `meta.stage` = "ideas"
   - `ideas.theme` = the theme string the user entered
   - `ideas.selected_idea` = the idea the user selected, with `title`, `overview`, `key_scriptures` (array), `themes` (array), `listener_takeaway`
4. Write the draft JSON to the current working directory.
5. Report: "Draft saved: [filename]."
