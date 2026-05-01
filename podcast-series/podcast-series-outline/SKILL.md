---
name: podcast-series-outline
description: Episode outline skill. Takes a single episode from the podcast-series-planner output and builds a detailed, time-stamped outline with scripture support, theological commentary, cultural context, and real-world application. Outputs plain text in the chat. Use alongside the Research Foundation skill.
---

# Episode Outline Builder

This skill takes a single episode from your series plan and builds a detailed outline ready to use in production. It includes time estimates, scripture support, commentary, and real-world application for every section.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Inputs

Before building the outline, ask the user the following questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"Paste the episode details from your `podcast-series-planner` output for the episode you want to outline."

**Question 2:**
"How long should this episode be in minutes?"

**Question 3:**
"Do you have a Series Context Log from previous episodes in this series?"

**Question 4 (only ask if the answer to Question 3 is yes):**
"Paste the Series Context Log into the chat."

Once you have all answers, proceed to build the outline. Do not ask any further questions.

---

## Episode Guidelines

Build the outline around the following five segments. Use the episode length the user provides to scale time allotments within the ranges below.

| Segment | Time Range |
|---|---|
| 1. Introduction | 1–2 minutes |
| 2. Series Recap | 2–3 minutes |
| 3. Topic Introduction | 3–5 minutes |
| 4. Topic Discussion | 20–28 minutes |
| 5. Conclusion | 1–2 minutes |

The Topic Discussion section must be broken into multiple logical sub-sections. The number of sub-sections should reflect the episode length — a 30-minute episode needs fewer sub-sections than a 45-minute episode.

---

## Directions

If a Series Context Log was provided, use it before building the outline:
- Do not reuse any scripture passage listed under "Scriptures used" in any log entry.
- Use the "Teased next" field from the most recent log entry to inform the Series Recap section — the outline should honor what was promised to the listener.
- Use the themes and key topics from all log entries to ensure this episode advances the series rather than repeats it.

Build the outline following all thirteen of these guidelines:

1. Include approximate time allotments for each section and sub-section.
2. Recommend supporting Bible verses throughout the discussion.
3. Use ONLY the NIV translation for all scripture references.
4. Where applicable, incorporate commentary insights from respected theologians or Bible scholars. Include their full name, source title, and a link where possible.
5. Include examples, stories, or statistics from modern life where appropriate to help listeners connect the biblical message to today.
6. Align the message with modern cultural challenges and practical Christian living.
7. Expand on the biblical and cultural context of the scripture passages used.
8. Explain the original audience of the scripture where relevant.
9. Highlight the theological significance of the scripture passages used.
10. Keep all explanations clear and accessible for new Christians.
11. Maintain an engaging and conversational tone appropriate for a podcast.
12. Use clear headings and sub-headings throughout. Include all headers even if a section has no content — leave it blank rather than omitting it.
13. Where applicable, connect this episode to previous episodes in the series to reinforce the series arc.

---

## Output Format

Use the following structure exactly:

---

EPISODE OUTLINE: [Episode Title]
Series: [Series Name] | Episode [#] | Target Length: [X] minutes

---

**1. Introduction (1–2 minutes)**
- Hook or engaging opening thought
- Brief explanation of the topic
- Introduce the key scriptures

**2. Series Recap (2–3 minutes)**
- Summary of key points from previous episode(s)
- How this episode continues or builds on the series

**3. Topic Introduction (3–5 minutes)**
- Context for the topic and why it matters today
- Note: Cultural and historical background belongs in the Topic Discussion subsections where it supports specific passages.

**4. Topic Discussion (20–28 minutes)**

*Subsection 1: [Title] (~X minutes)*
- Key talking points
- Supporting Bible verses (NIV)
- Cultural context
- Commentary insights
- Real-world application

*Subsection 2: [Title] (~X minutes)*
- Key talking points
- Supporting Bible verses (NIV)
- Cultural context
- Commentary insights
- Real-world application

(Continue subsections as needed to reach the target time.)

**5. Conclusion (1–2 minutes)**
- Summary of key lessons
- Reinforce the listener takeaway
- Encourage practical action in daily life
- Tease the next episode in the series (if applicable)
- Optional closing scripture

---

**POTENTIAL EPISODE TITLES**

Generate 10 potential episode titles that meet all of the following:
- 75 characters or fewer
- Engaging for podcast listeners
- Relevant to the episode topic
- Written with SEO best practices in mind

List them numbered 1–10.

---

## Outline Quality Check

After producing the outline, run the following four checks and report findings in a section labeled **OUTLINE QUALITY CHECK** at the end of your output. If a check passes, write "Passed." If an issue is found, describe it clearly and suggest a fix.

**1. Time Target**
Sum all section and subsection time allotments. Does the total fall within 2 minutes of the user's requested episode length? If not, identify which sections need adjustment.

**2. Scripture Repetition**
If a Series Context Log was provided, confirm that no scripture listed under "Scriptures used" in any log entry appears in this outline. If a repeated passage is present and necessary for this episode's teaching, flag it and state the reason.

**3. Central Point Clarity**
Can a first-time listener state this episode's single main idea in one sentence after hearing it? If the outline does not make this clear, flag where the focus drifts.

**4. Narrative Flow**
Does each section and subsection lead naturally to the next? Flag any abrupt transition or logic gap between sections.

---

## Next Step

Once the outline is approved and the quality check passes, proceed to `podcast-series-narrative` to write the full spoken narrative for this episode.

Note: `podcast-series-check` runs once on the completed series plan before you begin building outlines — not on individual episode outlines.
