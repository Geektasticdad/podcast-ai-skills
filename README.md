# Podcast AI Skills

A collection of Claude skills for planning, outlining, and writing podcast episodes. Every skill in this collection is built for the My Ministry Mission podcast hosted by Jason McConnell.

---

## Before You Start

Every skill in this collection requires the **foundation skill**. It sets the theological guardrails, voice and tone, and output standards that all other skills inherit. You must load it alongside any task skill at the start of every conversation.

**How to load a skill:**
Open a new Claude conversation. Paste the full contents of `foundation/SKILL.md` first, then paste the task skill you want to use. Give Claude your request. You only need to set your context variables once per conversation.

**Recommended setup:** Add both `foundation/SKILL.md` and your task skill as project knowledge in a Claude.ai Project. Every conversation in that project will load them automatically.

---

## Skills

| Skill | Folder | What It Does |
|---|---|---|
| Foundation | `foundation/` | Shared guardrails, voice, and output standards. Required with every skill. |
| Series Planner | `podcast-series/` | Interactive. Asks 5 questions, then produces a full series plan with episode breakdown. |
| Series Consistency Check | `podcast-series-check/` | Quality-checks a completed series plan against 6 criteria. Flags problems only — does not rewrite. |
| Episode Outline | `podcast-series-outline/` | Builds a detailed, time-stamped episode outline with scripture, commentary, and application. |
| Episode Narrative | `podcast-series-narrative/` | Writes the full read-aloud narrative for every section of a completed episode outline. |
| Series Context Log | `podcast-series-context-log/` | Generates a compact log entry after each episode. Paste it into the next episode's outline to maintain continuity. |

---

## Podcast Series Workflow

Follow these steps in order when building a new series.

### Step 1: Plan the Series

Run `podcast-series`. It will ask five questions about your topic, audience, anchor scripture, episode count, and any ideas you already have. Once you answer all five, it produces the full series plan.

### Step 2: Build the First Episode Outline

Run `podcast-series-outline`. Paste the episode details from your series plan and answer the remaining questions. For the first episode there is no context log yet — skip that question.

### Step 3: Check the Outline for Consistency

Run `podcast-series-check`. Paste your series plan into the input fields. Review the six checks. If any issues are flagged, go back to the outline conversation and request the specific fixes in the chat. Revise until the check comes back clean.

### Step 4: Write the Episode Narrative

Run `podcast-series-narrative`. Paste the approved outline. It produces the full spoken narrative for every section, formatted for Microsoft Word.

### Step 5: Generate the Context Log

Run `podcast-series-context-log`. Paste the completed narrative. It produces a compact log entry — copy it and save it somewhere accessible (a running doc, a notes file, anywhere easy to paste from).

### Step 6: Repeat for Every Episode

For each remaining episode, repeat Steps 2 through 5. When you reach Step 2, paste the accumulated context log entries when asked. Stack them with the most recent entry at the top. The outline will use the log to avoid repeating scriptures and to honor whatever the previous episode teased.

```
Step 2: Outline  →  Step 3: Consistency Check  →  Step 4: Narrative  →  Step 5: Context Log
         ↑                                                                         |
         └─────────────────── paste log, repeat for next episode ─────────────────┘
```

---

## Reference Files

| File | What It Contains |
|---|---|
| `foundation/references/bible-translations.md` | Quick guide to common Bible translations to help you choose your `BIBLE_TRANSLATION` setting. |
