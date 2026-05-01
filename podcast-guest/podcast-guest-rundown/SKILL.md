---
name: podcast-guest-rundown
description: Guest rundown email skill. Takes the completed guest narrative document from podcast-guest-narrative and generates a plain-text email from Jason to the guest summarizing the question areas and episode format. Output is plain text in the chat for copy-pasting into email. Use alongside the Research Foundation skill.
---

# Guest Rundown Email Generator

This skill reads the completed guest narrative document and writes a single, cohesive email from Jason to the guest. The email summarizes the episode format, groups the questions into readable topic areas, and gives the guest time to think and pray through their answers before the recording.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Inputs

Ask the user three questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"Attach the guest narrative Word document from `podcast-guest-narrative`, or paste its full text content into the chat."

**Question 2:**
"What is the recording date? If not yet confirmed, type TBD."

**Question 3:**
"Any logistical details to include in the email? For example: the recording platform (Zoom, Riverside, phone), technical recommendations (headphones, quiet room), or anything else the guest should know before the call. If none, say None."

Once you have all three answers, generate the email immediately. Do not ask any further questions.

---

## Directions

1. Read through the full guest narrative document to identify:
   - The selected or likely episode title direction
   - The on-air icebreaker questions
   - The faith questions
   - The product, service, or event questions (if present)
   - The listener call-to-action details (if present)

2. Write a single, cohesive email from Jason to the guest. The email should:
   - Open with a warm, personal welcome that expresses genuine excitement about the conversation.
   - Briefly describe the format and flow of the episode so the guest knows what to expect.
   - Summarize the key topic areas and themes that will be explored. Do not list every question verbatim here — group related questions into natural topic areas so the guest can think and pray through them without feeling scripted.
   - List the specific on-air questions the guest should be ready to answer, grouped under section headers as they appear in the narrative (e.g., "Getting to Know You," "Your Faith Journey," "About [Product/Service/Event]"). Number each group independently starting from 1 so the guest can navigate them easily.
   - If a product, service, or event is present, include a short paragraph letting the guest know Jason will give them dedicated time on-air to share about it.
   - Close with encouragement, prayer, and the logistical details provided in Question 2 and Question 3.

3. Do not include the episode introduction script, the conclusion script, or the listener call-to-action copy in the email. Those are for Jason's use only.

4. If the recording date is TBD, omit the date reference and insert this placeholder: [CONFIRM DATE WITH GUEST]

---

## Tone Guidelines

- Warm, personal, and encouraging. Not corporate or stiff.
- Pastoral and faith-centered throughout.
- Easy to read in under two minutes.
- Do not use em dashes anywhere in the email.

---

## Output Format

Write the full email as plain text using the structure below.

---

Subject: Getting You Ready for My Ministry Mission — [Episode Title or Topic Direction]

Hi [Guest Name],

[Opening paragraph — warm welcome, genuine excitement, 2–3 sentences]

[Paragraph — brief description of the show format and what a typical episode looks like for a guest]

[Paragraph — introduce the topic areas and themes conversationally, not as a bullet list]

Here are the questions I'm planning to ask so you have time to think and pray through your answers:

[For each question section present in the narrative, output a bold header matching that section's label, followed by a numbered list of the questions from that section. Restart numbering at 1 under each header. Preserve the section order as it appears in the narrative.]

[If product/service/event is present: one short paragraph letting the guest know they will have dedicated time on-air to share about it]

[Logistics paragraph — recording date, platform, and any technical notes from the user's answers]

[Closing — warm, encouraging, faith-centered sign-off with a note that Jason is praying for the conversation]

Jason
My Ministry Mission

---

## Next Step

Send the email to the guest and confirm receipt before the recording date.
