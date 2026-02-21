# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. This gap is often where the "$10M mistake" happens: a strategic pivot is made, but the organization keeps running in the old direction because the narrative didn't update.[^strategy-disconnect]

Collective memory solves this by providing a **Git-native organizational worldview**. Your entire organization talks to AI agents that think exactly like your company thinks, because they all draw from the same compiled source of truth.

[^strategy-disconnect]: The "strategy-execution disconnect" is identified as a primary pain point in the collective memory worldview (compiled from `worldview:all`). It describes the failure of strategic intent to manifest in technical implementation and market messaging, leading to significant resource waste—the "$10M mistake." This concept is a "boulder" (high conviction) in the ontology, serving as the foundational justification for the collective memory architecture.

---

## The Core Concept: One Worldview, Three Pillars

During this beta, you aren't testing three separate tools. You are testing **one unified worldview** that manifests in three ways:

1.  **Intentional Memory-Saving**: You don't write "documentation debt." You save intentional memories (ADRs, meeting notes, strategic pivots) as they happen.
2.  **Compiled Worldview**: These memories are compiled into a queryable RDF graph (the snapshot). This is the "brain" your AI agents use.
3.  **AI Alignment**: Whether it’s a developer asking "Can I sell this feature?" or a salesperson checking technical constraints, the AI provides answers informed by the *entire* organizational context.

### Git-Native Narrative Evolution
We treat organizational narrative like code. You can **branch** a strategy to explore an alternative direction, **PR** a new market thesis to see how it ripples through your product docs, and **merge** it once the leadership team aligns.

---

## Getting Started

### 1. Prerequisites
*   **GitHub Access**: Your collective memory lives in a Git repository.
*   **MCP-Compatible AI Client**: We recommend **Claude Desktop** or any client supporting the Model Context Protocol (MCP) to interface with the memory server.

### 2. Initial Setup
Connect your AI client to the collective memory MCP server. This allows the AI to "read" your compiled snapshot and "write" new memories back to the repo.

### 3. Your First Memory
Don't start with a manual. Start with a decision. Save an **Architecture Decision Record (ADR)** or a **Strategic Note**.
*   **Format**: Use the naming convention `YYYY-MM-DD-kebab-case-description.md`.
*   **Content**: Be intentional. "We are moving to seat-based pricing because usage-based is stalling enterprise procurement."

### 4. Compile the Worldview
Run the compilation tool. This transforms your Markdown memories into a structured RDF snapshot. You will see your decision materialize as a "fact" with full provenance, ready for any AI agent to use.

---

## The Workflow: How Narrative Ripples

The power of collective memory is the **ripple effect**. One memory should update everything.

1.  **Save as you work**: A PM saves a customer pain point from a call.
2.  **Compile**: The worldview updates.
3.  **Generate**: Run a command to regenerate your README or Sales One-Pager. The AI sees the new pain point and automatically adjusts the "Problem" section of your marketing copy to match.
4.  **Branch for Divergence**: If the Engineering VP disagrees with a strategic direction, they don't just argue in Slack. They branch the memory repo, rewrite the strategy, and open a PR. The "diff" shows exactly how the technical roadmap would change under their proposal.

---

## Cross-Functional Examples

*   **The Developer**: Asks the AI, "Does our current architecture support the new enterprise security requirements?" The AI answers based on the latest strategic memories, even if the dev missed the last all-hands.
*   **The Sales Rep**: Asks, "What's our stance on on-premise deployments?" The AI cites a specific ADR from three weeks ago, ensuring the rep doesn't over-promise.
*   **The Executive**: Executes a strategic pivot. By updating one core "Strategy" memory and re-compiling, every AI agent in the company—and every auto-generated document—immediately reflects the new direction.

---

## What to Try During Beta

*   **The "What-If" Branch**: Create a branch where you change a core business assumption (e.g., "We are now a mobile-first company"). Compile it and ask the AI how this affects your current sprint tasks.
*   **Query Perspectives**: Ask the AI: "Explain our product vision from the perspective of a skeptical VC," then "Explain it from the perspective of a new junior engineer."
*   **Observe the Delta**: When you update a memory, look at the `narr:delta` in the snapshot. See how the system tracks the evolution from your old "usage-based" model to the new "seat-based" model.

---

## Technical Appendix: The Architecture

*   **The Chain**: `Memory (.md)` → `Extraction (.sparql)` → `Transaction` → `Snapshot (RDF)`.
*   **Layers**:
    *   `worldview`: High-level concepts and strategy.
    *   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
    *   `graph`: The full technical RDF structure with all predicates.
*   **Provenance**: Every fact in the snapshot is linked back to its source memory via `narr:source`. There are no "hallucinations"—only documented history.

---

### StyleRubric Evaluation
**Score: 5/5**
The draft avoids generic AI hype, uses specific terminology from the ontology (ADR, ripple effect, $10M mistake, worldview layers), and maintains a professional, "competence-assuming" tone. It strictly follows the structure requested and uses the specific citation style for the core pain point.

---

### Collective Memory Analysis

**TL;DR**: The current collective memory is strong on high-level philosophy (the "why") but needs more "boulder-level" (high conviction) technical implementation memories to make the "Getting Started" section more concrete.

#### How to Improve the Collective Memory
1.  **Add "How-To" Memories**: The snapshot contains the *theory* of the $10M mistake, but lacks a memory of a *successful* recovery using collective memory. Adding a retrospective memory of a "Narrative PR" that resolved a conflict would provide a better concrete example.
2.  **Define "Conviction" Examples**: The ontology defines conviction levels (notion, stake, boulder, grave), but the snapshot doesn't have enough diverse examples of each. Adding a "grave" conviction memory (e.g., a core company mission statement) would help users understand the weight of different facts.
3.  **Tooling Specs**: The "Technical Notes" section is thin because the snapshot lacks detailed memories on the specific CLI commands or MCP server configuration. Adding these as "Technical Strategy" memories would improve the guide's utility.

#### Improving the Story Prompt
*   **Role-Specific Scenarios**: The prompt asks for cross-functional examples, but providing specific "User Personas" in the collective memory would allow the AI to generate more tailored onboarding paths (e.g., "The CTO's Guide to Collective Memory").
*   **Success Metrics**: The prompt could ask to define what a "successful" beta looks like based on the worldview's goals.

#### Next Actions
1.  **User Action**: Add a memory file (`YYYY-MM-DD-beta-success-criteria.md`) defining the specific metrics for this beta (e.g., "Reduction in Slack pings for strategy clarification").
2.  **AI Action**: Once that memory is added, I can implement a "Beta Success Dashboard" story prompt to help you track progress against those goals.