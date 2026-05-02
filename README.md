# Podcast AI Skills

A collection of Claude skills for planning, outlining, writing, and publishing podcast episodes. Every skill in this collection is built for the My Ministry Mission podcast hosted by Jason McConnell.

---

## Table of Contents

- [Before You Start](#before-you-start)
- [Skills](#skills)
- [Podcast Series Workflow](#podcast-series-workflow)
- [Standalone Episode Workflow](#standalone-episode-workflow)
- [Guest Workflow](#guest-workflow)
- [Publication Workflow](#publication-workflow)
- [Reference Files](#reference-files)

---

## Before You Start

Every skill in this collection requires the **foundation skill**. It sets the theological guardrails, voice and tone, and output standards that all other skills inherit. You must load it alongside any task skill at the start of every conversation.

**How to load a skill:**
Open a new Claude conversation. Paste the full contents of `foundation/SKILL.md` first, then paste the task skill you want to use. Give Claude your request. You only need to set your context variables once per conversation.

**Recommended setup:** Add both `foundation/SKILL.md` and your task skill as project knowledge in a Claude.ai Project. Every conversation in that project will load them automatically.

---

## Skills

**Foundation**

| Skill | Folder | What It Does |
|---|---|---|
| Foundation | `foundation/` | Shared guardrails, voice, and output standards. Required with every skill. |

**Series Workflow** — `podcast-series/`

| Skill | Folder | What It Does |
|---|---|---|
| Series Planner | `podcast-series/podcast-series-planner/` | Interactive. Asks 5 questions, then produces a full series plan with episode breakdown. |
| Series Consistency Check | `podcast-series/podcast-series-check/` | Quality-checks a completed series plan against 6 criteria. Flags problems only — does not rewrite. |
| Series Episode Outline | `podcast-series/podcast-series-outline/` | Builds a detailed, time-stamped episode outline with scripture, commentary, and application. |
| Series Episode Narrative | `podcast-series/podcast-series-narrative/` | Writes the full read-aloud narrative for every section of a completed series episode outline. |
| Series Context Log | `podcast-series/podcast-series-context-log/` | Generates a compact log entry after each episode. Paste it into the next episode's outline to maintain continuity. |

**Standalone Episode Workflow** — `podcast-episode/`

| Skill | Folder | What It Does |
|---|---|---|
| Episode Ideas | `podcast-episode/podcast-episode-ideas/` | Generates 3–5 standalone episode ideas for a given theme. Not tied to a series. |
| Episode Outline | `podcast-episode/podcast-episode-outline/` | Builds a detailed, time-stamped outline for a standalone episode. No series recap or continuity tracking. |
| Episode Narrative | `podcast-episode/podcast-episode-narrative/` | Writes the full read-aloud narrative for every section of a completed standalone episode outline. |

**Publication**

| Skill | Folder | What It Does |
|---|---|---|
| Publication Pack | `podcast-publication/` | Scans a finished transcript and produces three outputs: a Bible reference line, a 75–150 word episode description, and a social media pack with SEO summary, keywords, Facebook posts, X posts, and hashtags. |

**Guest Workflow** — `podcast-guest/`

| Skill | Folder | What It Does |
|---|---|---|
| Guest Research | `podcast-guest/podcast-guest-research/` | Asks 7 questions, researches the guest online, then produces a research brief with theological alignment check and Go/No-Go recommendation. Requires web browsing. |
| Guest Interview Outline | `podcast-guest/podcast-guest-outline/` | Builds a structured interview outline with introduction, icebreakers, faith questions, product/service/event questions, and a conclusion. Optionally analyzes an intro call transcript to surface key moments and sharpen question selection. |
| Guest Interview Narrative | `podcast-guest/podcast-guest-narrative/` | Writes the full production document: host scripts, on-air questions with follow-up prompts, listener call-to-action, and closing. Asks for the episode number and title. Formatted for Microsoft Word. |
| Guest Rundown Email | `podcast-guest/podcast-guest-rundown/` | Generates a plain-text prep email from Jason to the guest summarizing the question areas and episode format. Ready to copy and paste. |

---

## Podcast Series Workflow

Follow these steps in order when building a new series.

### Step 1: Plan the Series

Run `podcast-series-planner`. It will ask five questions about your topic, audience, anchor scripture, episode count, and any ideas you already have. Once you answer all five, it produces the full series plan.

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

## Standalone Episode Workflow

Follow these steps when producing a one-off episode that is not part of a series.

### Step 1: Generate Episode Ideas

Run `podcast-episode-ideas`. Provide a theme and how many ideas you want. It produces 3 or more standalone episode ideas, each with a title, overview, key scriptures, themes, and a listener takeaway.

### Step 2: Build the Episode Outline

Run `podcast-episode-outline`. Paste the episode idea you want to develop and provide the target episode length in minutes.

### Step 3: Write the Episode Narrative

Run `podcast-episode-narrative`. Paste the approved outline. It produces the full spoken narrative for every section, formatted for Microsoft Word.

```
Step 1: Episode Ideas  →  Step 2: Episode Outline  →  Step 3: Episode Narrative
```

---

## Guest Workflow

Use this end-to-end workflow when booking and preparing a guest for the show.

### Step 1: Research the Guest

Run `podcast-guest-research`. It will ask seven questions: the guest's name and website, social media URLs, episode topic and any product or service to mention, their favorite Bible verse, their answers to two intake questions about why they'd be a great guest and their faith journey, and anything about the guest or topic to avoid. The skill researches the guest online and produces a brief covering their background, faith summary, theological alignment across five checkpoints, and a Go/No-Go booking recommendation.

**Note:** This skill requires a Claude conversation with web browsing enabled. It will not produce a complete brief without internet access.

### Step 2: Build the Interview Outline

Run `podcast-guest-outline`. Paste the guest research brief and provide the target episode length in minutes. If you have a transcription from your intro call with the guest, paste or attach it — the skill will analyze it to surface stories, threads, and moments worth bringing on-air and use them to sharpen the questions. It produces a structured interview outline with an introduction script, icebreaker questions, faith questions, product/service/event questions, and a conclusion script, plus 10 potential episode titles.

### Step 3: Write the Interview Narrative

Run `podcast-guest-narrative`. Paste the approved interview outline, then provide the episode number and choose an episode title from the outline's title list (or write your own). It produces the full production document formatted for Microsoft Word — host scripts, all on-air questions with follow-up prompts, a listener call-to-action, and a closing script.

### Step 4: Send the Guest Rundown Email

Run `podcast-guest-rundown`. Attach or paste the guest narrative document and provide the recording date and any logistical details. It produces a plain-text prep email from Jason to the guest, ready to copy and paste, summarizing the question areas and what the guest can expect on the day.

```
Step 1: Research  →  Step 2: Interview Outline  →  Step 3: Narrative  →  Step 4: Rundown Email
```

---

## Publication Workflow

Use this after any episode is recorded and a transcript is available. It applies to series episodes, standalone episodes, and guest interviews equally.

### Step 1: Generate the Publication Pack

Run `podcast-publication`. It will ask four questions: the transcript, the episode title, series name and episode number (if applicable), and the listen URL. It produces three outputs in a single run:

1. **Bible Reference Line** — every scripture cited in the episode, normalized and ready to paste into show notes.
2. **Episode Description** — a 75–150 word description written in Jason's voice, ready to publish on the podcast host platform.
3. **Social Media Pack** — an SEO summary, 5–10 keywords, 3 Facebook post options, 3 X post options (280 characters or fewer each, with character counts), and the top 5 hashtags.

```
Transcript  →  podcast-publication  →  Bible References + Episode Description + Social Media Pack
```

---

## Reference Files

| File | What It Contains |
|---|---|
| `foundation/references/bible-translations.md` | Quick guide to common Bible translations to help you choose your `BIBLE_TRANSLATION` setting. |
