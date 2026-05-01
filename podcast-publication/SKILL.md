---
name: podcast-publication
description: Scans a podcast transcript and produces three publication-ready outputs: a normalized Bible reference line, a 75–150 word episode description written in Jason's voice, and a social media pack with SEO summary, keywords, Facebook posts, X posts, and top hashtags. Output is plain text in the chat. Use alongside the Research Foundation skill.
---

# Publication Pack Generator

This skill scans a transcript and produces three publication-ready outputs: a normalized Bible reference line, a short episode description written in Jason's voice, and a social media pack with SEO copy, Facebook posts, X posts, and hashtags. All outputs are ready to paste directly into show notes, a podcast host platform, or social media.

Output is plain text directly in the chat. Do not create or offer to export a Word document or downloadable file.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

---

## Inputs

Ask the user three questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"Paste the transcript or attach the transcript file."

**Question 2:**
"What is the episode title?"

**Question 3:**
"Is this episode part of a series? If yes, provide the series name and episode number. If no, say None."

**Question 4:**
"What is the listen URL for this episode? This will be included in the social media posts."

Once you have all four answers, produce all three outputs. Do not ask any further questions.

---

## Instructions

1. Scan the entire transcript and identify every reference to a Bible passage.

2. Recognize flexible spoken formats, including:
   - "Matthew chapter twenty-four verse three"
   - "Matthew 24 verse 3"
   - "Matthew 24:3"
   - "verses four through eight"
   - "Matthew 24 verses 4 to 8"
   - "Romans chapter eight verse twenty-five"

3. Normalize all references into standard Bible citation format: `Book Chapter:Verse`
   - Example: `Matthew 24:3`

4. Combine sequential verse references into a range.
   - `Matthew 24:4, Matthew 24:5, Matthew 24:6` → `Matthew 24:4–6`
   - `Matthew 24:4–6` and `Matthew 24:7–8` → `Matthew 24:4–8`
   - `Luke 21:8, 21:9, 21:10` → `Luke 21:8–10`

5. Remove duplicates. If the same verse is mentioned more than once, include it only once in the output.

6. Preserve separate references when they are not sequential.
   - Example: `Matthew 24:4–8; Luke 21:8–11`

7. Order references as they first appear in the transcript.

---

## Output Format

Produce all three outputs below in order, each separated by a horizontal rule.

---

### Output 1: Bible Reference Line

Output one single line only. Separate references with semicolons. Use en dashes for verse ranges, not hyphens.

Format: `Book Chapter:Verse` or `Book Chapter:Verse–Verse`

Example:

Matthew 24:4–8; Mark 13:5–8; Luke 21:8–11; Romans 8:25

---

### Output 2: Podcast Description

**Writing Guidelines:**

- Write in first person from Jason's perspective (e.g., "In this episode, I explore..." or "I want to invite you into...").
- Write in a warm, pastoral, and engaging tone that invites listeners into the episode.
- Summarize the central topic, key spiritual insights, and Biblical themes discussed in the episode.
- Mention important Scripture passages if they play a major role in the discussion.
- Avoid overly academic language. The audience includes new believers as well as mature Christians.
- Emphasize why the episode matters for everyday Christian life.
- All Bible references must use the NIV translation.
- End with a natural invitation for the listener to tune in.
- If a series name and episode number were provided, naturally mention them in the description so listeners know this episode is part of a larger series (e.g., "This is Episode 3 of [Series Name]...").
- Do not use em dashes.

**Output Requirements:**

Write 1–2 paragraphs (approximately 75–150 words total) that:
- Introduce the main topic of the episode.
- Highlight the Biblical foundation and spiritual themes.
- Explain why the topic is meaningful for listeners today.
- Encourage listeners to hear the full conversation.

Do not include headings or bullet points. Write it as a ready-to-publish episode description.

---

### Output 3: Social Media Pack

**Requirements:**

- Base everything on the transcript content.
- Use the episode title exactly as provided. Do not reword or shorten it.
- If a series name and episode number were provided, reference the series in at least one post option per platform to help listeners discover the full series.
- Use natural SEO keywords related to the episode topic.
- Include the listen URL exactly as provided.
- Facebook posts should be engaging, skimmable, and inviting.
- X posts must stay within 280 characters total, including the URL, hashtags, and spaces.
- Use 3–5 hashtags for Facebook posts and 1–3 for X posts.
- Avoid robotic SEO language, hashtag stuffing, and unsupported claims.
- Do not use em dashes.

**Deliver the following, in this order:**

**SEO Summary**
Write 1–2 sentences summarizing the episode for search. Natural language, not keyword-stuffed.

**SEO Keywords**
List 5–10 keywords pulled from the transcript. One per line.

**Facebook Posts**
Write 3 post options. Number them 1, 2, and 3. Each post should include the listen URL and 3–5 hashtags at the end.

**X Posts**
Write 3 post options. Number them 1, 2, and 3. Each post must be 280 characters or fewer, including the URL, hashtags, and spaces. Show the character count in brackets after each post.

**Top 5 Hashtags**
List the 5 hashtags most relevant to the episode. One per line.
