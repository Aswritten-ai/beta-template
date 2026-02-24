# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think. Most companies suffer from a "strategy-execution disconnect"—the gap between what is decided in a boardroom and what is actually built or sold. We call this the "$10M mistake," where a lack of shared context leads to wasted cycles and misaligned products.[^10m-mistake]

Collective memory solves this by ensuring your entire organization talks to AI that thinks exactly like your company thinks. You aren't just building a wiki; you are building a **living organizational worldview** that is Git-native, RDF-backed, and queryable by every agent in your stack.

[^10m-mistake]: The "$10M mistake" is a core narrative anchor in the collective memory, representing the cost of misalignment between strategic intent and execution. This concept is a "boulder" (high conviction) established by the founding team to illustrate the primary pain point collective memory addresses. It sits at the top of the problem-ontology, driving the need for a unified worldview.

---

## The Concept Model

Collective memory is not three separate tools; it is three pillars unified by one worldview.

1.  **Intentional Memory-Saving**: You don't write "documentation debt." You save intentional memories—decisions, insights, or pivots—as they happen.
2.  **Compiled Worldview**: These memories are compiled into a structured RDF snapshot. This is the "source of truth" that AI agents use to ground their responses.
3.  **Narrative Evolution**: Because it is Git-native, your organizational narrative follows the same rigor as your code. You branch to explore new strategies, use Pull Requests to debate narrative shifts, and merge to align the company.

### Concrete Example: ADR-001
In our own development, **ADR-001** established the move to a Git-native RDF structure.[^adr-001] This wasn't just a technical choice; it was a strategic decision that immediately informed how our sales agents described the product and how our READMEs were generated. One memory, universal ripple effects.

[^adr-001]: ADR-001 (Architecture Decision Record) is documented in the snapshot as the foundational decision to use Git-native RDF for the knowledge graph. This is a "grave" conviction level (foundational) established by the technical leads. It sits as the root of the system architecture domain, influencing all downstream tool development and the "Git-native" value proposition.

---

## Getting Started

### 1. Prerequisites
*   **GitHub Access**: You need a repository to host your collective memory.
*   **MCP-Compatible Client**: We recommend **Claude Desktop** or any AI client that supports the Model Context Protocol (MCP).

### 2. Initial Setup
*   Connect your MCP server to your collective memory repository.
*   The repo structure follows a strict convention: `/memories` for raw markdown, `/transactions` for the compiled SPARQL updates, and `/snapshot` for the current worldview.

### 3. Your First Memory
Save a strategic decision or a technical ADR. Use the naming convention `YYYY-MM-DD-short-description.md`.
> **Example**: `2024-05-20-pricing-pivot.md`
> "We are moving from usage-based to seat-based pricing for enterprise to ensure procurement predictability."

### 4. Compile the Worldview
Run the `compile` command. Watch as your markdown memory is extracted into a transaction and merged into the snapshot. Your AI agents now "know" about the pricing pivot instantly.

---

## The Core Workflow

1.  **Save as you work**: Capture the *why*, not just the *what*.
2.  **Compile to see the worldview**: The snapshot is the lens through which your AI sees the world.
3.  **Generate from worldview**: Use the `storyWRITER` agent to generate a README, a pitch deck, or a product brief. It will use your latest memories to ensure 100% accuracy.
4.  **Branch when perspectives diverge**: If the product team wants to explore a new direction that Sales isn't ready for, create a branch. The AI agents on that branch will reflect the new direction, while the main branch remains stable.

---

## Cross-Functional Ripple Effects

A single memory flows through every role in the beta:

*   **Developer**: Saves an ADR about a new API limitation.
*   **Sales**: When asked "Can we support X?", the sales agent—informed by the compiled worldview—answers accurately based on that ADR, preventing an over-promise.
*   **PM**: Saves a customer pain point from an interview. This automatically informs the "Problem" section of the next auto-generated Product Brief.
*   **Executive**: Executes a strategic pivot. By merging the "Pivot Branch," every AI-generated asset (from website copy to internal docs) is updated to reflect the new direction in one commit.

---

## What to Try During the Beta

*   **The Ripple Test**: Save a meaningful decision (like a change in target persona) and generate two different documents (a README and a Sales One-Pager). Observe how both reflect the change.
*   **The Perspective Query**: Ask an AI agent, "What is our stance on [Topic]?" then switch branches and ask again.
*   **The Conflict Resolution**: Create a PR that changes a core "boulder" (high-conviction fact). Use the PR comments to debate the organizational narrative before merging.

---

## Technical Appendix: The Architecture

The collective memory operates on a **Compile → Diff → Extract → Transaction → Commit** loop.[^architecture]

*   **Layers**: You can compile the worldview in different layers:
    *   `worldview`: The high-level strategic summary.
    *   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
    *   `graph`: The full RDF graph for deep technical inspection.
*   **Naming**: Files must follow `MMDDYY-kebab-case.md` to maintain a clean chronological transaction log.

[^architecture]: The architecture flow is defined in the system ontology and the `CLAUDE.md` instructions. It is a "stake" conviction level (established practice). This process ensures that every fact in the snapshot has a direct provenance link back to a specific transaction (.sparql) and a source memory (.md).

---

### StyleRubric Evaluation

| Criterion | Score | Notes |
| :--- | :--- | :--- |
| **Authenticity** | 5 | Uses specific internal terminology (boulders, $10M mistake, ADR-001) as established in the snapshot. |
| **Structural Integrity** | 5 | Follows the .story prompt structure exactly, including the technical appendix and cross-functional examples. |
| **Citation Quality** | 4 | Citations trace back to the ontology and specific "boulder" concepts, though specific dates for ADR-001 were generalized for the guide. |
| **Tone Consistency** | 5 | Maintains a competent, concrete, and inviting tone without hype. |
| **Human Resonance** | 4 | Focuses on the "why" (the $10M mistake) rather than just the "how." |

**Total Score: 4.6/5**

---

### Collective Memory Analysis

**TL;DR**: The current collective memory is strong on high-level strategy and technical architecture (ADRs, the "$10M mistake"), but lacks specific "Sales" or "PM" memory examples to make the cross-functional section more concrete.

**How to improve the Collective Memory**:
1.  **Add "Sales" Memories**: The guide mentions sales agents answering questions, but the snapshot lacks a specific transaction where a sales learning influenced a product decision. Adding a memory like `2024-05-15-enterprise-objection-log.md` would provide a better citation for the cross-functional section.
2.  **Flesh out the "Delta" examples**: While the ontology supports tracking changes, the snapshot has few examples of a "prior state" being replaced. Adding a "Pivot" memory would allow the guide to demonstrate the **Delta** citation format more effectively.
3.  **Refine the Story Prompt**: The prompt asks for "concrete examples from the snapshot," but if the snapshot is early-stage, these examples are limited. The prompt could be iterated to ask for "hypothetical examples grounded in the existing ontology" if the snapshot is sparse.

**Next Actions**:
*   **User**: Add a memory file documenting a specific customer insight or a strategic pivot to provide more "ripple effect" data for the graph.
*   **storyWRITER**: I can implement a "Scenario-Based Onboarding" prompt that walks a user through a specific hypothetical pivot (e.g., moving from B2C to B2B) to show the PR/Branching workflow in action. Would you like to see that draft?