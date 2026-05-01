---
name: podcast-series-context-log
description: Generates a compact Series Context Log entry after a completed episode narrative. The log captures key topic, themes, every scripture cited, the listener takeaway, and the next-episode tease. Paste it into the Series Context field when building the next episode's outline to maintain continuity across the series. Output is plain text in the chat. Use alongside the Research Foundation skill.
---

# Series Context Log Generator

This skill reads a completed episode outline and generates a single compact log entry. That entry is pasted into the Series Context field of `podcast-series-outline` when building the next episode, so every outline has accurate memory of what came before.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Input

"Paste the full output from `podcast-series-outline` for the episode you just completed. If any scripture references or content changed while writing the narrative, note those changes after pasting the outline."

Once you have the input, generate the log entry immediately. Do not ask any further questions.

---

## Directions

Using the outline provided (and any noted changes), generate a compact Series Context Log entry formatted for direct pasting into the next episode's Series Context field in `podcast-series-outline`.

The log entry must:
- Be concise enough that multiple episode entries can be stacked without becoming unwieldy.
- Capture only the information needed to maintain continuity and avoid repetition in the next outline.
- List every scripture passage cited so they are not reused in future episodes.
- Capture exactly what the conclusion teased so the next episode can honor that setup.

---

## Output Format

Generate a single block in the exact format below. No explanation before or after it — just the block, ready to paste.

---
Ep [N] — [Episode Title]
Key topic: [One sentence summary of what the episode covered]
Themes: [Comma-separated list]
Scriptures used: [Semicolon-separated list of every passage cited, e.g., Psalm 56:3-4; Isaiah 41:10; Matthew 6:25-27]
Listener takeaway: [One sentence]
Teased next: [Paste or closely summarize the next-episode tease from the conclusion]
---

---

## Next Step

Paste this log entry into the Series Context field when running `podcast-series-outline` for the next episode. If multiple episodes have already been completed, stack the entries in order with the most recent at the top.
