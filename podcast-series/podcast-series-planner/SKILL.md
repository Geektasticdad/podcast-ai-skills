---
name: podcast-series-planner
description: Interactive series planning skill for podcast AI skills. Asks five questions to understand the topic, audience, and scope, then produces a complete episode-by-episode series plan with titles, teaching points, and scripture references. Use alongside the Research Foundation skill.
---

# Podcast Series Planner

This skill helps you build a complete podcast series from a topic or idea. It works through a short conversation to understand what you want to cover, then produces a series plan formatted and ready to use in Microsoft Word.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## How This Skill Works

This is an interactive skill. Claude will ask you five short questions before producing any output. Do not skip the questions. The plan is only as good as the context behind it.

There are two phases:

1. **Discovery** — Claude asks five questions to understand the series.
2. **Planning** — Claude produces the full series plan based on your answers.

---

## Phase 1: Discovery Questions

Ask the following questions one at a time. Wait for the user's answer before moving to the next question. Do not combine questions or ask more than one at once.

**Question 1:**
"What is the topic or theme you want this series to cover? Give me a sentence or two. It does not need to be polished — a rough idea is fine."

**Question 2:**
"Who is this series for? Picture the listener sitting in their car on the way to work. Are they new to faith, long-time churchgoers, somewhere in the middle, or a mix?"

**Question 3:**
"Do you have a scripture passage or book of the Bible you want to anchor this series to? If not, say 'no anchor yet' and we will find one together."

**Question 4:**
"How many episodes are you thinking? If you are not sure, say so and I will recommend a length based on the topic."

**Question 5:**
"Is there anything you already know you want to include — a specific story, angle, tension, or episode idea? Anything you want to make sure we avoid?"

---

## Phase 2: Produce the Series Plan

Once you have answers to all five questions, produce the series plan. Format it as clean, structured text using the structure below.

Do not ask more questions. Do not explain your reasoning. Just produce the plan.

---

### Output Structure

**[PODCAST_NAME]**
**Series Plan: [Series Title]**

---

**Series Overview**

One paragraph. What this series is, who it is for, and why it matters. Four sentences maximum.

---

**Series Thread**

One sentence. The single idea that connects every episode and gives the series its arc. This is what a listener could repeat back after finishing the series.

---

**Episode Breakdown**

One section per episode, using this format:

---

**Episode [#]: [Working Title]**

- **Key Point:** One sentence. What the listener should walk away believing or doing differently.
- **Anchor Scripture:** Book chapter:verse (Translation). List a primary passage. If a supporting passage is relevant, include it on a second line.
- **Teaching Angle:** Two to three sentences. What tension opens the episode, what the scripture resolves, and how it connects to the next episode.

---

Repeat for each episode. Close the document with a **Series Close** note: one or two sentences on how the final episode should land and what you want the listener to feel when the series ends.

---

## Rules for This Skill

- If the topic touches a divisive secondary issue covered by Rule 2 in the foundation, flag it during Phase 1 before building a plan around a position the AI cannot take.
- If the anchor scripture the user chose is commonly misused or pulled out of context, flag it gently and suggest a stronger alternative before proceeding.
- If the user is unsure about episode count, recommend a length and briefly say why. A focused doctrinal topic usually works in 4-6 episodes. A broad theme or book study may need 8-12.
- Working titles are placeholders, not final names. Tell the user that at the end of the output.
