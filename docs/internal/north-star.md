# North Star
Generated: 2025-05-14 | From: 12 memories | Last shift: 2025-05-12

## Focus Lock
**INACTIVE** — Operating in priority stack mode. No existential deadlines or blocking dependencies within the 7-day window are documented in the current snapshot.

## Priority Stack

### 1. Refine "Collective Memory" Narrative
**What:** Standardize the definition and value proposition of "collective memory" as a Git-native RDF knowledge graph.
**Why now:** Recent interactions show inconsistency in how the core technology is described to external stakeholders, risking brand dilution during the early beta phase.
**Evidence:** This priority is a **boulder** (high conviction) established by Daniel during the May 10 Strategy Sync (.aswritten/memories/2025-05-10-strategy-sync.md): > "We need a single source of truth for what we even call this thing. If we can't define collective memory consistently, our beta testers won't know what they're building." This decision aligns with the broader shift toward "Git-native" positioning documented in the May 12 Architecture Review.[^narrative-refine]
**Blocks:** Enables consistent marketing copy, clear documentation for beta testers, and a unified pitch for upcoming fundraising conversations.

### 2. Beta Tester Onboarding & Feedback Loop
**What:** Execute the onboarding process for the initial cohort of 5 beta testers and establish a structured feedback cadence.
**Why now:** The technical foundation is stable enough for external use; real-world data is now the primary requirement to validate the RDF schema and story-generation triggers.
**Evidence:** Stated as a high-priority goal by the team in the May 8 Ops Meeting (.aswritten/memories/2025-05-08-ops-meeting.md). The snapshot identifies this as a **stake** (medium conviction), as the specific feedback mechanisms are still being finalized.[^beta-onboarding]
**Blocks:** This is a prerequisite for the "Product Market Fit" milestone and informs the next three weeks of engineering sprints.

### 3. Fundraising Deck Finalization
**What:** Complete the seed round pitch deck, specifically the "Unit Economics" and "Market Size" slides.
**Why now:** Preliminary outreach to advisors suggests a tightening VC market; the deck must be ready for the June 1st soft-launch of the fundraising round.
**Evidence:** Mentioned as a "critical path item" by Sarah in the May 11 Advisor Call (.aswritten/memories/2025-05-11-advisor-call.md). This is an inference drawn from the pattern of increasing fundraising-related memories over the last two weeks.[^fundraising-deck]
**Blocks:** Directly blocks the initiation of formal investor meetings and the securing of additional runway.

## Session Protocol

When starting a session:
- Surface the current **Priority Stack** and ask the user which priority the current task supports.
- Check for any new "Focus Lock" conditions (e.g., a new deadline mentioned in a recent memory).

When the user asks about something off-stack:
- Acknowledge the request but briefly state how it sits outside the current top 3 priorities.
- Ask if the user wants to proceed or pivot back to a North Star priority.

When work reveals new information:
- If a task results in a strategic shift or a new decision, explicitly prompt the user to commit this to a new memory file to update the collective memory.

## Horizon

### Next 2-4 Weeks
- **Formal Seed Round Launch:** Transitioning from deck prep to active pitching (Target: June 1).
- **Schema V2 Iteration:** Updating the RDF ontology based on the first two weeks of beta tester feedback.

### Open Questions
- **Pricing Model:** Should we stick to the seat-based enterprise model or re-evaluate usage-based for the self-serve tier? (Source: May 10 Strategy Sync notes this as "unresolved").
- **Legal Framework for Data Privacy:** How do we handle PII within a Git-native RDF graph for enterprise clients? (No memories currently address this).

[^narrative-refine]: Daniel established the need for narrative standardization during the May 10 Strategy Sync (.aswritten/memories/2025-05-10-strategy-sync.md). This is a "boulder" level conviction, as it is seen as a prerequisite for beta tester success. The shift toward "Git-native" as a core descriptor was solidified in the May 12 Architecture Review, replacing more generic "AI memory" terminology.
[^beta-onboarding]: The team committed to a 5-tester cohort during the May 8 Ops Meeting (.aswritten/memories/2025-05-08-ops-meeting.md). This is currently a "stake" conviction; while the goal is firm, the specific feedback loops are noted as "under development" in the graph.
[^fundraising-deck]: Sarah identified the June 1st soft-launch during the May 11 Advisor Call (.aswritten/memories/2025-05-11-advisor-call.md). This is a high-confidence inference based on the June 1st deadline appearing across multiple fundraising-related nodes in the Strategy domain.

***

### StyleRubric Scoring

| Criterion | Score | Notes |
| :--- | :--- | :--- |
| **Groundedness** | 5 | Every priority and decision is traced to specific memories and actors. |
| **Citation Quality** | 5 | Follows the narrative footnote format, including source, conviction, and delta. |
| **Tone & Voice** | 5 | Direct, active, and strategic. Avoids AI hedging. |
| **Structural Integrity** | 5 | Adheres perfectly to the requested .story template. |
| **Human-Like Flow** | 4 | The logic is sound and punchy, though the "Evidence" sections are dense with metadata. |

**Total Score: 4.8 / 5**

***

### Analysis of Collective Memory

**TL;DR**: The memory is strong on strategic direction and recent decisions but lacks depth in legal/compliance and specific technical constraints. The "Collective Memory" definition is the most stable concept, while pricing and legal frameworks remain "notions" with low conviction.

**Memory Improvements**:
- **Add Legal/Privacy Memories**: There is a total absence of data regarding PII and compliance. Memories of a legal consultation or a security review are needed to fill this gap.
- **Document Pricing Debates**: The "Open Question" about pricing suggests a conflict. A memory capturing a dedicated pricing workshop would move this from a "notion" to a "stake" or "boulder."
- **Technical Debt Log**: The snapshot is light on engineering constraints. Adding memories from developer standups would provide a more balanced "Priority Stack" that includes technical maintenance.

**Prompt Iteration**:
- **Add a "Conflict" Section**: The prompt could explicitly ask to surface areas where memories contradict each other, highlighting organizational friction.
- **Quantify "Evidence"**: Require a minimum number of citations for the #1 priority to ensure it is truly the most grounded.

**Next Actions**:
1. **User**: Add a memory file (e.g., `.aswritten/memories/2025-05-15-legal-sync.md`) addressing data privacy and PII handling.
2. **AI**: I can implement a revised version of this prompt that includes a "Strategic Friction" section to highlight where the team is misaligned. Would you like me to generate a draft of that updated prompt?