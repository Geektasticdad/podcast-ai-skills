---
name: podcast-guest-research
description: Guest research skill. Asks 6 questions to collect guest details, crawls their website and social media, searches the internet for additional context, then produces a structured research brief covering background, faith summary, theological alignment, a Go/No-Go recommendation, potential episode topics, icebreakers, and vetting questions. Output is plain text in the chat. Use alongside the Research Foundation skill.
---

# Guest Research Brief Generator

This skill gathers basic information about a potential podcast guest, researches them across their website, social media, and the internet, then produces a detailed research brief to help you decide whether to book them.

Output is plain text directly in the chat. Do not create or offer to export a Word document or PDF.

**Requires:** Load the Research Foundation skill (`foundation/SKILL.md`) alongside this skill before you begin.

**Requires web access:** This skill searches the internet and crawls provided URLs. It must be run in a Claude conversation with browsing enabled.

---

## Inputs

Ask the user the following questions in sequence. Wait for each answer before asking the next.

**Question 1:**
"What is the guest's name and website URL?"

**Question 2:**
"Do you have any social media URLs for this guest? Provide any you have for LinkedIn, X, Instagram, or Facebook. If none, say None."

**Question 3:**
"Is there a specific topic you want to explore with this guest, or should I suggest ideas? Also, does the guest have a product, service, or event to mention? If yes, provide details. If no to either, say None."

**Question 4:**
"What is the guest's favorite Bible verse?"

**Question 5:**
"Paste the guest's answer to this intake question: 'Why would you be a great guest on My Ministry Mission?'"

**Question 6:**
"Paste the guest's answer to this intake question: 'Tell me about your faith journey.'"

Once you have all six answers, proceed to research before generating the brief. Do not ask any further questions.

---

## Research Directions

Before writing the brief, complete the following research steps:

1. Crawl the guest's website and any provided social media profiles. Collect relevant background, ministry or business details, published content, and product or service information.
2. Search the internet for news articles, blog posts, podcast appearances, interviews, and any recent activity related to the guest.
3. Note any publicly available information about their ministry, business, theology, or area of expertise.

Use everything gathered — from the inputs and from research — to write the brief.

---

## Output Format

Format the entire response as a structured markdown research brief using the layout below. Use horizontal rules between sections, emoji section headers, and bold labels.

---

# 🎙️ Guest Research Brief — [Guest Name]

---

## 👤 Guest Summary
Write a 2–3 paragraph summary of the guest covering their background, area of expertise, faith journey, and why they may be a compelling guest for the podcast.

---

## ✝️ Faith Summary
Write a 2–3 paragraph summary of the guest's faith journey, drawing from their intake answer and any additional context found during research.

---

## 🔍 Theological Alignment
Assess whether the guest's publicly stated beliefs and teachings align with core Christianity. For each checkpoint, lead with a bold label followed by a brief assessment based on available public information. Use ✅ for clear alignment and flag any concerns plainly.

**1. Authority of Scripture** — Does the guest treat the Bible as the authoritative Word of God?
**2. Salvation by grace through faith** — Does the guest affirm that salvation is through faith in Jesus Christ alone, not works?
**3. Deity and resurrection of Christ** — Does the guest affirm that Jesus is fully God and rose bodily from the dead?
**4. The gospel** — Does the guest's teaching center on the death and resurrection of Jesus as the basis for forgiveness and new life?
**5. Orthodoxy concerns** — Are there any signs of prosperity gospel, New Age influence, unorthodox theology, or teachings that contradict mainstream evangelical Christianity?

---

## ✅ Go / No-Go Recommendation

**Verdict:** Book / Hold / Do Not Book

Provide 1–2 sentences explaining the reasoning.

---

## 🎯 Potential Episode Topics
If no specific topic was provided, suggest 3–5 episode topic ideas as a numbered list based on the guest's background and expertise. If a topic was provided, confirm it is a strong fit and suggest 1–2 alternative angles.

---

## 💬 Screening Call Icebreakers
List 5–7 conversational icebreaker questions as a numbered list. These are for the private get-to-know-you call only — not for use on the show.

---

## ❓ Questions to Clarify on the Call
List 3–5 important questions Jason should ask to vet the guest's fit, theology, or topic direction before booking them on the show.

---
