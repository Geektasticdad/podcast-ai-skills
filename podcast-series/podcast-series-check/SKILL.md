---
name: series-consistency-check
description: Quality-check skill for a completed series plan. Reviews the episode breakdown against six checks — theme overlap, scripture repetition, arc progression, standalone accessibility, theological consistency, and tone fit. Outputs observations and recommendations only. Use alongside the Research Foundation skill.
---

# Series Consistency Check

This is a quality-check step, not a rewrite step. Your job is to identify problems and surface recommendations. Do not rewrite any content. Do not produce a Word document. Output your findings as plain text directly in the chat.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Inputs

Paste the full output from `1-Series-Ideas.md` into the fields below before running the check.

```
Series Name:
[INSERT SERIES NAME]

Series Overview:
[INSERT SERIES OVERVIEW]

Series Arc:
[INSERT SERIES ARC]

Episode Breakdown (all episodes):
[PASTE FULL EPISODE BREAKDOWN FROM 1-Series-Ideas.md]
```

---

## Directions

Review the series plan against the following six checks. For each check, list any issues found. If no issues are found, write "No issues found."

### 1. Theme Overlap

- Identify any episodes where the core themes are too similar.
- Flag cases where listeners might feel two episodes cover the same ground.
- Suggest how to differentiate the episodes if overlap is found.

### 2. Scripture Repetition

- Identify any Bible passages (book, chapter, and verse) that appear in more than one episode.
- Related passages (same book, different chapter) are acceptable. Only flag identical or near-identical citations.
- Suggest alternative passages if repetition is flagged.

### 3. Arc Progression

- Evaluate whether the series builds progressively from beginning to end.
- Flag any episode that does not clearly advance the listener's understanding beyond the previous episode.
- Note any arc gaps — a logical step missing between two consecutive episodes.

### 4. Standalone Episode Test

- For each episode, assess whether a new listener who has not heard the previous episodes would be able to follow along.
- Flag any episode that assumes too much prior knowledge without a clear recap opportunity.

### 5. Theological Consistency

- Check that the theological positions across episodes are consistent with orthodox evangelical Christian teaching.
- Flag any episode overview that could be read as theologically unclear, incomplete, or in tension with other episodes in the series.

### 6. Tone and Audience Fit

- Check that each episode is accessible to new believers as well as long-time Christians.
- Flag any episode that may be too academic, too elementary, or misaligned with the warm and pastoral tone of the podcast.

---

## Output Format

Output your response as plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

---

SERIES CONSISTENCY REVIEW: [Series Name]

**1. THEME OVERLAP**
[Findings or "No issues found."]

**2. SCRIPTURE REPETITION**
[Findings or "No issues found."]

**3. ARC PROGRESSION**
[Findings or "No issues found."]

**4. STANDALONE EPISODE TEST**
[Findings or "No issues found."]

**5. THEOLOGICAL CONSISTENCY**
[Findings or "No issues found."]

**6. TONE AND AUDIENCE FIT**
[Findings or "No issues found."]

**SUMMARY**
2-4 sentences summarizing the overall strength of the series plan and the most important items to address before moving to production.

---

## Next Step

Address any flagged issues by revising the series plan in `1-Series-Ideas.md`, then proceed to `0a-Series-Launch-Pack.md` to generate series-level marketing content.
