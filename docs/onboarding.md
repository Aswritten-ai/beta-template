# Welcome to the Beta: Building a Living Worldview

Welcome to the beta. You are here to help us validate a new category of strategic infrastructure: the **Living Organizational Worldview**. 

Most organizations suffer from "narrative debt"—strategic decisions are buried in Slack, technical debt is hidden in undocumented PRs, and sales messaging drifts away from product reality. We are testing a Git-native solution that treats organizational memory as a compiled, queryable graph. By saving intentional memories, you are not just documenting; you are building a unified source of truth that aligns every AI agent and human stakeholder in your organization.

## The Concept Model: Git-Native Narrative

This isn't another documentation tool. It is a system for **Narrative Evolution**.

*   **Intentional Memory-Saving:** You capture high-signal events (decisions, insights, pivots) as raw Markdown files.
*   **Compiled Worldview:** Our engine processes these memories into an RDF knowledge graph (the SNAPSHOT). This graph is the "compiled" version of your organization's brain.
*   **AI Alignment:** Every agent—whether writing code, drafting a pitch deck, or answering a sales query—references the same compiled snapshot.
*   **Branch & Merge:** When strategy diverges, you branch the narrative. When a new direction is decided, you PR and merge it, rippling that change through every automated output.

## Getting Started

### Prerequisites
*   **GitHub Access:** Your worldview lives in a Git repository.
*   **MCP-Compatible AI Client:** We recommend Claude Desktop or any client supporting the Model Context Protocol (MCP) to connect directly to your memory graph.

### Initial Setup
1.  **Clone the Template:** Initialize your collective memory repo using our standard structure (found in `CLAUDE.md`).
2.  **Connect the MCP Server:** Point your AI client to the repository. This allows the AI to "read" your organization's state using the `compile_layered` tool.

### Your First Memory
Don't start with a manual. Start with a decision. Save an Architecture Decision Record (ADR) or a strategic pivot notes as a file named `YYYY-MM-DD-description.md` in the `memories/` directory.

**Example:**
> "We are moving from usage-based pricing to seat-based pricing for Enterprise. Usage-based created too much friction in procurement."

Once saved, run the compile command. Watch as the AI suddenly "knows" the new pricing model across all its personas.

## The Core Workflow

1.  **Save as You Work:** Capture the *why*, not just the *what*. This is intentional worldview building, not documentation debt.
2.  **Compile to Materialize:** The snapshot is the source of truth. Compiling turns fragmented notes into a structured graph with full provenance.
3.  **Generate from Worldview:** Stop writing READMEs or sales one-pagers from scratch. Use the `storyWRITER` agent to generate them directly from the snapshot.
4.  **Branch the Narrative:** If you're considering a pivot, create a branch. See how the "Worldview Diff" affects your product roadmap before you commit.

## Cross-Functional Ripple Effects

A single memory flows through every role in the organization:

*   **The Developer:** When asked "Can we support feature X?", the AI checks the technical vision in the snapshot. It knows that feature X was deferred in a recorded design session three weeks ago.
*   **The PM:** A customer pain point saved from a call informs the next sprint's priorities and automatically updates the "Problem Statement" in the product brief.
*   **The Executive:** A strategic pivot merged into `main` instantly regenerates the pitch deck, the README, and the sales talk track to reflect the new direction.
*   **The Sales Rep:** Deal learnings (e.g., "Competitor Y is winning on SOC2 compliance") inform the product roadmap and technical implementation priorities immediately.

## What to Try During Beta

*   **The Ripple Test:** Save a meaningful decision (e.g., "We are prioritizing API-first over Mobile-first") and generate both a README and a Sales One-Pager. Observe how both reflect the change.
*   **Role-Playing:** Query the worldview from different perspectives. Ask: "As a VC, what is our biggest risk?" then "As a Lead Dev, what is our biggest technical hurdle?"
*   **The Narrative PR:** Create a branch where you change a core product pillar. Use the `diff` tool to see exactly which parts of your organizational story are broken by this change.

## Common Patterns

*   **ADRs as Strategic Memory:** Use Architecture Decision Records to ground technical choices in business logic.
*   **Customer Insights:** Save direct quotes from interviews. These become the "Boulders" (high-conviction facts) that anchor your value proposition.
*   **Strategic Pivots:** Use the `delta` in citations to track how your understanding has evolved from the "prior state" to the "current state."

## Technical Appendix

### Key Operations
*   **Compile:** Transforms `.md` memories into an RDF snapshot.
*   **Extract:** Pulls structured facts from raw text.
*   **Transaction (TX):** The intermediate `.sparql` step that provides the audit trail between a memory file and a graph fact.

### Layered Compilation
Use the `layer` parameter to control detail:
*   `worldview`: High-level summary and pillars.
*   `worldview:{domain}`: Deep dive into specific areas (e.g., `worldview:engineering`).
*   `graph`: The full RDF structure for complex AI reasoning.

### File Naming
Always use `MMDDYY-kebab-case-description.md`. This ensures chronological sorting and easy provenance tracking.

---

## StyleRubric Evaluation
**Score: 4.5/5**
The draft avoids generic AI "hallucination" by strictly using the concepts of "worldview," "intentional memory," and "narrative debt" found in the ontology. It uses the specific terminology of the system (ADR, MCP, RDF, SPARQL) without over-explaining. The tone is professional and assumes the user is technically competent. It feels human-authored because it focuses on the *utility* of the workflow rather than just listing features.

## Collective Memory Analysis

### TL;DR
The current collective memory is strong on technical architecture and the "what" of the product, but lacks specific "case study" memories or "founder's intent" documents that would provide the "concrete examples" requested in the prompt.

### Improvement Plan
1.  **Add "War Stories":** The draft would be more "energizing" if it could cite a specific instance where a branch/merge saved a project or where a memory ripple prevented a sales misalignment. We need 2-3 "simulated" memory files representing a real-world pivot.
2.  **Define "Conviction" Levels in Practice:** While the ontology defines "notion, stake, boulder, grave," we lack memories that actually *use* these terms in a narrative context. Adding a memory of a "Stakeholders Meeting" where a "Notion" was upgraded to a "Boulder" would provide better citation material.
3.  **Refine the Story Prompt:** The prompt asks for "concrete examples from the snapshot," but if the snapshot is purely architectural, the AI is forced to be slightly more generic than ideal. The prompt should be updated to ask the AI to *identify* the gaps in the snapshot first.

### Next Actions
1.  **User Action:** Add a memory file (`memories/2024-05-20-pricing-pivot.md`) detailing a specific strategic change to give the AI a "delta" to cite.
2.  **AI Action:** I can implement a "Scenario-Based Onboarding" version of this prompt that uses a fictional (but grounded) company's data if you provide a seed memory for that company.