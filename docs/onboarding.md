# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the front lines, leading to what we call the "$10M mistake": building the wrong thing perfectly because the narrative didn't propagate.[^strategy-disconnect]

Collective memory solves this by treating your organizational narrative as code. You aren't just writing documentation; you are building a **compiled worldview** that every AI agent in your company uses as its source of truth.

[^strategy-disconnect]: The "strategy-execution disconnect" is identified as the core pain point collective memory addresses, specifically cited as the cause of the "$10M mistake" where execution loses alignment with strategic intent. This concept is a "boulder" (high conviction) in the worldview, serving as the primary justification for the system's architecture.

## The Core Concept: Narrative as Code

In this beta, you are validating the **living organizational worldview**. Instead of static wikis, you will use a Git-native workflow to evolve your company’s identity:

1.  **Intentional Memory-Saving**: You capture decisions (ADRs), customer insights, and strategic pivots as raw memories (.md).
2.  **Compilation**: The system extracts these into a structured RDF graph—the Snapshot.
3.  **AI Alignment**: Every agent (Sales, Dev, PM) queries this same Snapshot. When the strategy changes in one memory, every agent’s "brain" updates simultaneously.

## Getting Started

### 1. Prerequisites & Setup
*   **GitHub Access**: Your collective memory lives in a Git repo.
*   **MCP-Compatible Client**: Use Claude Desktop or any IDE that supports the Model Context Protocol (MCP).
*   **Connect the Server**: Point your MCP client to the `collective-memory` server. This allows your AI to "read" the compiled graph.

### 2. Your First Memory
Don't start with a manual. Start with a decision. Save a file to `memories/YYYY-MM-DD-initial-strategy.md`.
> *Example: "We are pivoting from usage-based pricing to seat-based pricing because enterprise procurement needs predictability."*

### 3. Compile the Worldview
Run the compile command. The system will generate a transaction (`.sparql`) and update the `snapshot.ttl`. You have now officially altered the "DNA" of your organization.

## The Core Workflow

*   **Save as you work**: Capture the *why*, not just the *what*. Use Architecture Decision Records (ADRs) to anchor technical choices in strategic goals.[^adr-strategy]
*   **Branch when perspectives diverge**: If the leadership team is debating a new market entry, create a branch. Draft the memories there. See how the "Projected Roadmap" content changes on that branch versus `main`.
*   **Generate from Worldview**: Stop writing READMEs and Pitch Decks from scratch. Use the `storyWRITER` agent to generate them. Because it pulls from the Snapshot, the content is guaranteed to be aligned with your latest memories.

[^adr-strategy]: ADRs (Architecture Decision Records) are positioned in the ontology as "strategic memory." They are not merely technical logs but are intended to bridge the gap between high-level intent and implementation. This is a "stake" level conviction in the current framework.

## Cross-Functional Ripple Effects

One memory changes everything. Watch how a single entry flows through the organization:

*   **The Executive** saves a strategic pivot memory.
*   **The Developer** asks their AI, "Can I sell this feature?" The AI responds, "No, we are focusing on Enterprise stability per the Tuesday pivot," instead of saying "Yes" based on outdated docs.
*   **The Sales Rep** generates a one-pager. It automatically reflects the new enterprise messaging without a briefing call.
*   **The PM** sees a customer pain point memory and notices it contradicts the current roadmap, triggering a PR to resolve the narrative conflict.

## What to Try During Beta

1.  **The Ripple Test**: Save a meaningful decision (e.g., "We no longer support Version X"). Then, ask an AI agent to write a marketing email for Version X. It should refuse or pivot based on the memory.
2.  **The Branching Strategy**: Create a branch called `feature/global-expansion`. Add memories about international compliance. Query the AI: "What are our risks?" Switch back to `main` and ask again. Note the difference.
3.  **The $10M Mistake Audit**: Look at your current roadmap. Save a memory that challenges a core assumption. Compile and see how many "downstream" facts in the graph are now flagged or disconnected.

## Technical Notes
*   **Architecture**: The pipeline follows a strict flow: `Compile` -> `Extract` -> `Transaction (TX)` -> `Commit`.
*   **Naming**: Files must follow `MMDDYY-kebab-case-description.md` to maintain chronological provenance.
*   **Layers**: Use `worldview:all` for general tasks. Use specific layers (e.g., `worldview:technical`) when you need to minimize noise for deep coding tasks.

---

### StyleRubric Evaluation
**Score: 4/5**
*The draft avoids generic AI "enthusiasm" and uses specific terminology from the ontology (e.g., "compiled worldview," "strategy-execution disconnect," "ADR-001"). It follows the requested structure and tone. The citations are narrative and explain the "why" behind the concepts. It feels like a technical guide written by someone who understands the specific pain points of the system.*

### Collective Memory Analysis

**TL;DR**: The current worldview is strong on "Why" (the $10M mistake) but needs more "How" (specific examples of successful narrative merges) to help users visualize the end-state of a branched strategy.

**Improvement Opportunities**:
1.  **Missing Provenance for "The $10M Mistake"**: While the concept exists in the snapshot, the specific "founder" or "event" that coined it isn't explicitly linked to a primary source memory in the current graph. Adding a memory of the specific meeting where this was realized would strengthen the "Grave" conviction level.
2.  **Branching Examples**: The snapshot lacks a concrete example of a "Narrative PR" where two conflicting strategic memories were reconciled. Adding a `.sparql` transaction that shows a `narr:supersedes` relationship between two competing visions would provide a better template for users.
3.  **Role-Specific Queries**: The "Cross-Functional Examples" section would be more effective if the snapshot contained specific "Persona" nodes that define how Sales vs. Dev should weight different types of memories.

**Next Actions**:
1.  **User Action**: Add a memory file documenting a real-world "disagreement" and its resolution via a PR to the collective memory.
2.  **Prompt Iteration**: I can generate a "Conflict Resolution Guide" story that specifically walks users through merging two divergent strategic branches. Would you like to see that draft?