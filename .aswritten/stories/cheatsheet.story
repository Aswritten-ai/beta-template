---
id: narrative-cheatsheet
title: "Narrative & Marketing Cheatsheet"
destination: /docs/marketing
compile_layer: layer0Plus1Plus2
audience: internal team, advisors, sales, content creators
tone: clear, concise, reference-ready, canonical
model:
  - anthropic/claude-sonnet-4.5
---

## Context

This is a reference document for consistent marketing language across all channels. Format as scannable cheatsheet with hierarchical sections. Not a guide—a reference. Everything here should be copy-pasteable.

## Assignment

Generate comprehensive marketing cheatsheet containing pitches at multiple lengths (phrase/sentence/paragraph), examples, case study summaries, email templates, social formats, and FAQ. All content derived from snapshot's positioning, terminology, and use cases.

## Thesis

One canonical source of truth for all marketing language. Every pitch, email, post, or conversation should reference this document for consistent positioning.

## Requirements

1. **Query positioning statements from snapshot** - Extract core definition, category, outcome, differentiation
2. **Surface value propositions from snapshot** - Identify benefits by audience (CEO, CTO, Strategy, PM, Engineering, VCs)
3. **Draw terminology from snapshot** - Key phrases, verbs, metaphors that define the narrative
4. **Generate examples from snapshot** - Use cases showing before/after, workflow, impact
5. **Extract capabilities from snapshot** - What AI does with collective memory (development, executive, content, change tracking)
6. **Derive FAQ from snapshot** - Common questions from decision records, positioning, capabilities
7. **Match tone to snapshot** - Communication style, voice, emphasis patterns

## Structure

### Title & Tagline
- Product name
- One-line tagline (under 10 words)
- Subtitle/value prop (under 15 words)

### Pitches by Length

**One Phrase (5-10 words)**
- Core definition
- Category + outcome

**Two Phrase (10-20 words)**
- Definition + mechanism OR
- Definition + key benefit

**Three Phrase (20-30 words)**
- Definition + mechanism + benefit OR
- Problem + solution + outcome

**One Sentence (20-30 words)**
- Complete definition with outcome
- Query snapshot for core positioning statement

**Two Sentence (40-60 words)**
- Definition + flow OR
- Problem + solution

**Three Sentence (60-90 words)**
- Definition + flow + value OR
- Problem + solution + outcome

**One Paragraph (90-150 words)**
- Complete pitch: problem, solution, mechanism, value
- Surface quantified impact from snapshot
- Draw workflow description from snapshot

**Two Paragraph (150-250 words)**
- Extended pitch with examples
- Generate specific use case from snapshot
- Include audience-specific value props

**Three Paragraph (250-400 words)**
- Full narrative: problem, solution, how it works, value by audience, differentiation
- Surface multiple use cases from snapshot
- Include quantified metrics from snapshot

### Examples

**Before/After Scenarios**
Generate 3-5 examples from snapshot showing:
- Onboarding scenario (3-6 months → day 1)
- Knowledge loss scenario (departure → zero loss)
- Coding agent scenario (generic implementation → business-aligned)
- Content generation scenario (manual updates → auto-generated)
- Board reporting scenario (manual compilation → auto-generated)

**Workflow Examples**
Draw from snapshot's process descriptions:
- User observes with AI → AI prompts witness → draft together → commit → review → update
- Show concrete example (e.g., healthcare pivot, ADR creation, strategy shift)

**Use Case Illustrations**
Generate from snapshot's solution archetypes:
- Creative agency managing client knowledge
- Consulting firm onboarding consultants
- Digital agency maintaining code context
- VC tracking portfolio company progress

### Case Study Summaries

For each pilot/case study in snapshot, generate:
- **Company profile** (size, industry, role composition)
- **Challenge** (pain point before implementation)
- **Implementation** (how they started, what they witnessed)
- **Results** (time saved, productivity gained, specific metrics)
- **Quote** (if available in snapshot, otherwise note "pending")

Format: 2-3 sentences, emphasis on quantified outcomes.

### Email Templates

**Advisor Intro Email (150-200 words)**
- Subject line
- Hook (problem statement)
- Solution overview
- Ask (warm intro to specific company profile)
- Query snapshot for advisor-led GTM approach

**CEO Cold Email (100-150 words)**
- Subject line
- Pain point (operational, not cost)
- Solution (collective memory concept)
- Proof (pilot offer)
- CTA (30-minute call)
- Draw language from snapshot's pain-first positioning

**VC Portfolio Email (150-200 words)**
- Subject line
- Value for VCs (portfolio visibility, reporting automation)
- Value for portfolio companies (operational improvement)
- Ask (pilot with 1-2 portfolio companies)
- Surface VC value propositions from snapshot

**Follow-up Email (75-100 words)**
- Reference to previous conversation
- One new insight or update
- Specific next step
- Keep conversational tone

### Social Media Formats

**Twitter/X Thread Starter (280 chars)**
Hook that drives to problem or insight.
Generate from snapshot's hook patterns.

**LinkedIn Post (Short - 150 words)**
Problem → solution → call-to-action.
Surface snapshot's use case most relevant to professional audience.

**LinkedIn Post (Long - 300 words)**
Story format: customer challenge → implementation → results.
Generate from snapshot's case studies or pilot descriptions.

**LinkedIn Carousel Outline (5-7 slides)**
- Hook slide
- Problem slides (2-3)
- Solution slide
- Value slides (2-3)
- CTA slide
Extract content from snapshot's four pillars and value propositions.

**Demo Video Script (60-90 seconds)**
- Hook (15 sec): Problem statement
- Demo (45 sec): Live workflow (observe → witness → query)
- Close (15 sec): Pilot CTA
Draw workflow from snapshot's process descriptions.

### FAQ

Generate 15-20 questions from snapshot covering:

**Category/Positioning:**
- What is collective memory for AI?
- How is this different from ChatGPT Teams or Claude Projects?
- Is this a new AI model?

**How It Works:**
- How does witnessing work?
- What gets saved as memories?
- How do AIs query the witness?
- What's the review process?

**Implementation:**
- How long does setup take?
- What AIs does this work with?
- Do we need to change our workflow?
- What about existing AI conversations?

**Data/Security:**
- Who owns the data?
- Where is data stored?
- Can we export our memories?
- What about sensitive information?

**Value/Outcomes:**
- How fast do new hires get productive?
- What happens when someone leaves?
- How does this help with coding?
- How does content generation work?

**Pricing/Business:**
- How is this priced?
- What's included in pilot?
- How long is typical pilot?
- What does success look like?

**Target Market:**
- Who is this for?
- Why not enterprise?
- What about tech startups?
- VCs/Board value proposition?

For each question, generate answer from snapshot (2-4 sentences). If snapshot lacks specific detail, note "[pending validation]" rather than inventing content.

### Terminology Reference

**Key Phrases:**
Extract and define from snapshot:
- Collective memory
- The witness
- Observe vs. witness
- Commit to the witness
- Query the witness
- Day 1-exit institutional knowledge
- One worldview, aligned output

**Verbs:**
List primary action verbs from snapshot with usage context.

**Metaphors:**
Extract metaphor patterns from snapshot (e.g., git-parallel language, organizational transparency).

**Prohibited Language:**
Note what NOT to say based on snapshot's positioning decisions:
- Don't lead with cost (pain first)
- Don't say "better AI" (we're tool-agnostic)
- Don't say "better docs" (for AI consumption, not human)
- Avoid generic tech startup language if targeting agencies

### Audience-Specific Value Props

For each audience in snapshot, generate:
- **Primary pain point** (what keeps them up at night)
- **Core benefit** (what collective memory solves)
- **Proof point** (metric or example)
- **Language to use** (how they talk about the problem)

Audiences: CEO, Head of Strategy, CTO, PM, Engineering, Sales, VCs/Board, Advisors

### Differentiation Statements

Generate from snapshot's positioning:
- vs. ChatGPT Teams/Claude Projects
- vs. Confluence/Notion (traditional docs)
- vs. Building it yourself
- vs. No solution (status quo)

Format: "Unlike X, collective memory [key difference]. This means [outcome]."

## Constraints

- **Format:** Markdown with clear hierarchical headers, scannable sections
- **Length:** Respect specified word counts for each section
- **Tone:** Reference document, not marketing copy - factual, precise, copy-pasteable
- **Completeness:** If snapshot lacks content for a section, note "[pending: need case study]" or "[pending: validation]"
- **No invention:** Do not create examples, quotes, or metrics not present in snapshot
- **Citations:** Include snapshot provenance in comments for key claims (not visible in output but helpful for maintenance)
- **Structure:** Use consistent formatting (bold for headers within sections, bullets for lists, emphasis for key terms)
- **Output format:** Single markdown file, hierarchical structure, easy to search/scan

## Success Criteria

This document succeeds if:
1. Anyone can find the right pitch for their context in <2 minutes
2. All pitches are consistent with snapshot positioning
3. No one needs to "write from scratch" - they copy/adapt from here
4. Updates to snapshot can regenerate this document automatically
5. Every claim is traceable to snapshot source

Generate complete cheatsheet with all sections. Use "[section]" headers for clear navigation.
