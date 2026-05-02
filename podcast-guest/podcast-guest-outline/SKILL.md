---
name: podcast-guest-outline
description: Guest interview outline skill. Takes a completed guest research brief from podcast-guest-research and builds a structured interview outline with an introduction, icebreakers, faith questions, product/service/event questions, and a conclusion. Output is plain text in the chat. Use alongside the Research Foundation skill.
---

# Guest Interview Outline Builder

This skill takes a completed guest research brief and builds a structured interview outline ready to use in production. It includes time estimates and prepared questions for every section.

This is an interview outline. It is question-driven, not teaching-driven. There are no scripture analysis sections or theological commentary notes.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Inputs

Before building the outline, ask the user two questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"Paste the full output from your `podcast-guest-research` brief for the guest you want to interview."

**Question 2:**
"How long should this episode be in minutes?"

**Question 3:**
"Do you have a transcription from your intro call with this guest? If yes, paste it or attach the file. If no, type None."

Once you have all three answers, proceed to build the outline. Do not ask any further questions.

---

## Transcript Analysis

If a transcription was provided, read it before building the outline and extract the following:

- **Stories and moments worth putting on-air.** Flag any anecdote, personal turning point, or vivid detail the guest shared that would resonate with listeners. Note it for use in a faith question or icebreaker.
- **Topics the guest is clearly energized by.** When a guest lights up about something in a pre-call, they will be a better guest on that topic. Prioritize those threads.
- **Anything to avoid or handle carefully.** Sensitive disclosures, topics the guest seemed reluctant about, or anything Jason indicated he wants to steer clear of.
- **Natural question threads.** Moments where Jason asked a follow-up and the guest went deeper — these reveal where the best on-air questions will land.

Use these notes to shape question selection, wording, and order throughout the outline. Do not quote the transcript directly in the outline — draw from it, don't reproduce it. If no transcript was provided, skip this step.

---

## Episode Guidelines

Build the outline around the following five sections. Use the episode length the user provides to scale time allotments and question counts within the ranges below.

| Section | Time Range | Notes |
|---|---|---|
| 1. Introduction | 2–3 minutes | Host speaks. Guest does not speak yet. |
| 2. Icebreakers | 5–10 minutes | Always start with the guest's favorite Bible verse. |
| 3. Faith Questions | 15–25 minutes | Scale to episode length. |
| 4. Product, Service, or Event | 5–10 minutes | Skip this section entirely if the research brief shows None. |
| 5. Conclusion | 1–2 minutes | Host speaks. Thank the guest and point listeners to their website and social media. |

Longer episodes should include more questions per section. A 30-minute episode needs fewer questions than a 60-minute episode. Use judgment to land at a question count that fills the time without rushing.

---

## Directions

Build the outline following all eight of these guidelines:

1. Include approximate time allotments for each section.
2. Write all questions in a conversational, open-ended style. Avoid yes/no questions.
3. Include 1–2 follow-up prompts under each main question to help Jason go deeper if the conversation allows.
4. Base all icebreaker and faith questions on the guest's background, faith journey, and research brief context. Questions should feel tailored to this specific guest, not generic.
5. Always open the Icebreakers section with a question about the guest's favorite Bible verse from the research brief.
6. Faith questions should progress naturally — start with their personal story and move toward broader application and insight.
7. If the guest has a product, service, or event, questions in Section 4 should let the guest describe it in their own words and explain why it matters, not sound like an advertisement.
8. If the research brief shows None for product/service/event, omit Section 4 entirely and note its absence in the outline.

---

## Output Format

Use the following structure exactly:

---

GUEST INTERVIEW OUTLINE: [Guest Name]
Topic: [Episode Topic] | Target Length: [X] minutes

---

**1. Introduction (~2–3 minutes)**

Write a short host script for Jason to read aloud. It should:
- Open with a warm, engaging welcome.
- Introduce the guest by name and briefly describe who they are and what they do.
- Mention the guest's website and any product, service, or event if applicable.
- End with a natural transition into the icebreaker questions.

---

**2. Icebreakers (~5–10 minutes)**

List questions as a numbered list. Start with the guest's favorite Bible verse. Follow with questions about their background, story, and personal history.

For each question, include indented follow-up prompts labeled *Follow-up:*

1. [Favorite Bible verse question]
   - *Follow-up:* [Prompt]
2. [Background/history question]
   - *Follow-up:* [Prompt]

(Continue for all icebreaker questions.)

---

**3. Faith Questions (~15–25 minutes)**

List questions as a numbered list. Questions should progress from personal story into broader faith insight and application.

For each question, include indented follow-up prompts labeled *Follow-up:*

1. [Faith question]
   - *Follow-up:* [Prompt]
2. [Faith question]
   - *Follow-up:* [Prompt]

(Continue for all faith questions.)

---

**4. Product, Service, or Event (~5–10 minutes)**

If the research brief includes a product, service, or event, list questions as a numbered list. Questions should let the guest describe their offering in their own words and explain why it matters to listeners.

If the research brief shows None, write: *This guest has no product, service, or event to discuss. Section omitted.*

1. [Product/service/event question]
   - *Follow-up:* [Prompt]
2. [Product/service/event question]
   - *Follow-up:* [Prompt]

(Continue for all product/service/event questions.)

---

**5. Conclusion (~1–2 minutes)**

Write a short host script for Jason to read aloud. It should:
- Thank the guest warmly and sincerely.
- Summarize in one sentence what listeners heard or learned from the conversation.
- Direct listeners to the guest's website and social media.
- If the guest has a product, service, or event, include a brief final mention with any relevant details from the research brief.
- Close with an encouraging send-off for both the guest and the listeners.

---

**POTENTIAL EPISODE TITLES**

Generate 10 potential episode titles that meet all of the following:
- 75 characters or fewer
- Engaging for podcast listeners
- Relevant to the guest and topic
- Written with SEO best practices in mind

List them numbered 1–10.

---

## Next Step

Once the outline is approved, proceed to `podcast-guest-narrative` to write the full production document for this interview.
