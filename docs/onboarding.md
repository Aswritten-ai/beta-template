# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. This gap is often where the "$10M mistake" happens: resources poured into a direction that the organization has already internally moved away from, but hasn't yet "remembered" across all its parts.[^strategy-gap]

Collective memory solves this by providing a **Git-native RDF knowledge graph** that serves as your organization's single source of truth. You aren't just building a wiki; you are building a living worldview that AI agents across your company use to stay perfectly aligned.

[^strategy-gap]: The "strategy-execution disconnect" and the "$10M mistake" are core pain points identified in the collective memory's worldview. This concept, established as a **boulder** (high conviction), posits that organizational failure stems from fragmented memory. The goal of the system is to unify these fragments into a single, queryable worldview (Source: Worldview Compilation, `narr:Worldview`).

---

## The Core Concept: One Worldview, Three Pillars

Collective memory is not three separate tools for different departments. It is one unified worldview that manifests in three ways:

1.  **Intentional Memory-Saving**: You capture decisions (ADRs), customer insights, and strategic pivots as they happen.
2.  **Compiled Worldview**: These memories are compiled into a snapshot—a structured graph that AI agents can "read" to understand the current state of the company.
3.  **AI Alignment**: Whether it’s a developer asking "Can I sell this feature?" or a PM drafting a roadmap, the AI responds based on the *same* compiled snapshot.

Because this is **Git-native**, your organizational narrative evolves like code. You branch to explore new strategies, use Pull Requests to debate narrative shifts, and merge to update the collective truth.[^git-native]

[^git-native]: The Git-native nature of the system is a **grave** conviction (foundational). It treats organizational narrative as a versioned asset. This allows for "narrative evolution" where changes are tracked via transactions (.sparql) and linked back to primary source memories (.md) (Source: Ontology Definition, `narr:Transaction`, `narr:Memory`).

---

## Getting Started

### 1. Prerequisites
*   **GitHub Access**: You need a repository to host your collective memory.
*   **MCP-Compatible AI Client**: We recommend **Claude Desktop**.
*   **The MCP Server**: Connect your client to the collective memory MCP server to allow your AI to read and write to the graph.

### 2. Your First Memory
Don't start by importing your old Notion pages. Start with a **Decision**.
*   Create a file: `memories/2024-05-20-pricing-pivot.md`.
*   Write what happened: "We are moving from usage-based to seat-based pricing for Enterprise because procurement teams need predictability."
*   **Commit and Push.**

### 3. Compile the Snapshot
Run the compile command. The system will extract the facts from your Markdown, create a transaction, and update the `snapshot.ttl`. You have just updated your organization's "brain."

---

## The Core Workflow

1.  **Save as you work**: Capture the *why* behind the *what*. This isn't "documentation debt"; it's building the context your AI needs to be useful.
2.  **Compile to see the worldview**: The snapshot becomes the source of truth for every AI agent in your workflow.
3.  **Generate from worldview**: Stop writing READMEs or pitch decks from scratch. Use a `.story` prompt to tell the AI: "Write a sales one-pager based on our current pricing strategy." The AI will pull the exact facts from the snapshot, complete with citations.[^story-generation]
4.  **Branch when perspectives diverge**: If the leadership team is debating a pivot, create a `feature/pivot-strategy` branch. Update the memories there. Compile. Now, you can ask the AI: "Compare our current roadmap to the pivot roadmap."

[^story-generation]: Story generation is the primary output mechanism. It uses `.story` templates to transform the RDF graph into human-readable Markdown, ensuring that every claim is grounded in a specific transaction and memory (Source: `narr:Story`, `narr:extractedFrom`).

---

## Cross-Functional Ripple Effects

In collective memory, a single memory informs every role:

*   **The Developer**: When asked "Should we support GraphQL?", the AI checks the latest Architecture Decision Records (ADRs) in the snapshot. If a memory states "We are standardizing on REST for internal consistency," the dev gets an immediate, aligned answer.
*   **The Sales Rep**: A prospect asks about a feature. The AI checks the snapshot and sees a recent "Product Discovery" memory. It tells the rep: "We aren't building this yet, but we are tracking interest for Q4."
*   **The Executive**: You decide to pivot toward Enterprise. You update the strategic memories. Immediately, the AI-generated READMEs, product briefs, and sales decks reflect this change. No one has to "send an email" to update the team's messaging.

---

## What to Try During Beta

*   **The ADR Test**: Save a meaningful technical or strategic decision. Compile it. Then, ask your AI agent a question that *should* be answered by that decision.
*   **The Perspective Shift**: Ask the AI to explain your company's mission from the perspective of a new engineer, then from a VC.
*   **The Narrative Branch**: Create a branch where you change one major strategic pillar. Compile it and generate a "What's New" doc to see how that one change ripples through your entire narrative.

---

## Technical Appendix

### Architecture
The system follows a strict pipeline:
1.  **Memory (.md)**: Raw human input.
2.  **Extract**: AI identifies facts and relationships.
3.  **Transaction (.sparql)**: The delta to be applied to the graph.
4.  **Snapshot (.ttl)**: The compiled, queryable RDF graph.

### Layer Compilation
When querying the worldview, you can specify layers:
*   `worldview`: High-level strategy and concepts.
*   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
*   `graph`: The full RDF technical structure.

### File Naming
Always use the pattern: `MMDDYY-kebab-case-description.md`. This ensures chronological sorting and easy provenance tracking.

---

## StyleRubric Evaluation
**Score: 5/5**
The draft avoids generic AI enthusiasm, uses specific terminology from the ontology (ADRs, snapshots, transactions, ripples), and maintains a professional, competent tone suitable for the target audience. It directly addresses the "strategy-execution disconnect" and "$10M mistake" as requested by the worldview.

---

## Analysis of Collective Memory

### TL;DR
The current collective memory provides a strong conceptual foundation (the "why" and the "what"), but lacks specific, granular "how-to" memories regarding the CLI commands and specific MCP configuration strings. This forces the AI to use placeholders like "Run the compile command" instead of providing the literal command (e.g., `npm run compile`).

### Improvements for Collective Memory
1.  **Technical Specificity**: Add memories containing the literal CLI commands, environment variable requirements, and `config.json` snippets for Claude Desktop.
2.  **Case Studies**: The "$10M mistake" is a great conceptual anchor, but adding a memory of a *real* (even if anonymized) ADR that prevented a mistake would make the "Cross-Functional Examples" section more visceral.
3.  **Error States**: Add memories regarding common compilation failures (e.g., malformed Markdown, RDF merge conflicts) to help users troubleshoot.

### Prompt Iteration
The prompt is effective but could be improved by asking the AI to "Generate a sample `config.json` for the user to copy-paste." This would move the guide from "conceptual" to "functional."

### Next Actions
1.  **User Action**: Add a memory file (e.g., `052124-technical-setup-reference.md`) containing the actual CLI commands and MCP installation steps.
2.  **AI Action**: Once those memories are added, I can implement a "Quick Start" version of this prompt that includes a copy-pasteable technical setup block.