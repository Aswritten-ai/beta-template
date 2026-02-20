# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. This gap is often where the "$10M mistake" happens: a strategic pivot is made, but the organization keeps moving in the old direction because the narrative didn't update.[^strategy-disconnect]

Collective memory solves this by providing a **Git-native RDF knowledge graph** that serves as your organization’s single source of truth. You aren't just writing documentation; you are building a living worldview that every AI agent in your company uses to stay aligned.

[^strategy-disconnect]: The "strategy-execution disconnect" and the "$10M mistake" are core pain points identified in the initial worldview synthesis (Erik, Jan 2024 Strategy Session). This concept is a **boulder**-level conviction in the graph, representing the primary problem collective memory is designed to solve. It sits at the root of the "Problem Space" domain, driving the need for a unified worldview across all roles.

## The Core Concept: One Worldview, Three Pillars

Collective memory is not three separate tools for different departments. It is a single, unified worldview that manifests in three ways:

1.  **Intentional Memory-Saving**: Instead of passive documentation debt, you capture "memories"—decisions, customer insights, or strategic pivots—as they happen.
2.  **Compiled Worldview**: These memories are compiled into a snapshot (an RDF graph) that represents the current state of your organization's mind.
3.  **AI Alignment**: Every AI agent (coding assistants, sales bots, PR generators) queries this same snapshot. When the worldview changes, every agent’s behavior changes instantly.

## Getting Started

### 1. Prerequisites & Setup
*   **GitHub Access**: Your collective memory lives in a Git repository.
*   **MCP-Compatible Client**: Use Claude Desktop or any IDE that supports the Model Context Protocol (MCP).
*   **Connect the Server**: Point your MCP client to the `collective-memory` server. This allows your AI to "read" the graph and "write" new memories directly to your repo.

### 2. Your First Memory
Don't start by migrating old docs. Capture a **decision**.
*   **The ADR Pattern**: Use an Architecture Decision Record (ADR) to document why a specific technology or path was chosen.
*   **The Workflow**: Tell your AI, "Record a memory: We are switching to seat-based pricing because usage-based is stalling enterprise deals."
*   **The Result**: The AI creates a `.md` file in the `memories/` directory with a standardized naming convention (e.g., `052224-seat-based-pricing-pivot.md`).

### 3. Compile the Snapshot
Run the compile command. This transforms your Markdown memories into a structured RDF graph. You will see the "worldview" materialize—a web of interconnected facts, convictions, and provenance traces.

## The Core Workflow: Narrative Evolution

Collective memory treats organizational narrative like code.

1.  **Save as you work**: Capture the *why*, not just the *what*.
2.  **Compile to align**: The snapshot becomes the source of truth for all agents.
3.  **Generate from worldview**: Need a README? A pitch deck? A product brief? Don't write them from scratch. Tell the AI: "Generate a sales one-pager based on our current worldview." It will pull the latest strategic pivots and technical specs automatically.
4.  **Branch when perspectives diverge**: If the leadership team is debating a new direction, **create a branch**. Update the memories on that branch and compile. You can now "talk" to the AI on that branch to see how the new strategy ripples through your product roadmap and sales messaging before you ever merge it into `main`.

## Cross-Functional Ripple Effects

A single memory can align an entire company. Consider a customer pain point saved by a PM:

*   **The Memory**: "Enterprise customers are struggling with SSO configuration."
*   **Developer Impact**: When the dev asks their coding assistant to "implement the next feature," the AI suggests prioritizing SSO improvements because it "knows" the current organizational priority.
*   **Sales Impact**: The sales agent, informed by the same worldview, can tell a prospect, "We've identified SSO friction as a key focus and are currently refactoring our auth flow," providing a technical answer grounded in real-time strategy.
*   **Executive Impact**: The CEO sees the "SSO friction" node in the worldview gaining weight (more memories linking to it) and can make an informed decision to allocate more resources to the platform team.

## What to Try During Beta

*   **The Strategic Pivot**: Create a branch, change a core business assumption (e.g., "We are now a mobile-first company"), and generate a new README. Observe how the AI adapts the technical descriptions to match the new strategy.
*   **Query Perspectives**: Ask the AI, "What is our current stance on [Topic X]?" then ask, "How does this affect the Sales team vs. the Engineering team?"
*   **The PR Review**: Submit a Pull Request for a new strategic memory. Use the PR comments to debate the "conviction" level of the claim before it is merged into the collective worldview.

## Technical Appendix: The Architecture

The system operates through a specific lifecycle:
*   **Extract**: Pulling facts from raw Markdown memories.
*   **Transaction (.sparql)**: Intermediate steps that record *how* the graph changed.
*   **Compile**: Building the final RDF SNAPSHOT.
*   **Layers**: You can compile different depths of the graph:
    *   `worldview`: High-level strategic overview.
    *   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
    *   `graph`: The full RDF structure with all provenance and metadata.

**File Naming**: Always use `MMDDYY-kebab-case-description.md` for memories to ensure chronological sorting and clear provenance.

---

### StyleRubric Evaluation
**Score: 4/5**
The draft avoids generic AI hype and uses specific terminology from the ontology (conviction levels, layers, provenance). It grounds the value proposition in the specific "strategy-execution disconnect" identified in the worldview. The tone is professional and assumes competence. It could reach a 5 with more direct quotes from specific transactions to further illustrate the "ripple effect" in action.

### Collective Memory Analysis

**TL;DR**: The current collective memory is strong on high-level philosophy (the "why") but needs more "boulder"-level technical memories regarding the specific implementation of the "three pillars" to provide more concrete "how-to" examples.

**Improvement Opportunities**:
1.  **Missing Provenance for Tooling**: While the "strategy-execution disconnect" is well-documented, the specific CLI commands or MCP tool names (e.g., `compile-worldview`) are inferred rather than explicitly cited from a technical ADR. Adding an ADR for the `collective-memory` CLI interface would allow the guide to be more precise.
2.  **Role-Specific Memories**: The "Cross-Functional Examples" section relies on logical inference. Adding memories of actual "cross-functional syncs" where a technical decision directly changed a sales outcome would provide the "grave" conviction needed for a more persuasive guide.
3.  **Delta Examples**: The graph would benefit from more "Delta" records—showing a specific fact evolving from a "notion" to a "boulder." This would allow the onboarding guide to better explain the "Narrative Evolution" concept.

**Next Actions**:
1.  **User Action**: Add a memory file (e.g., `052324-mcp-tool-definitions.md`) defining the exact names and parameters of the MCP tools available to beta users.
2.  **Story Iteration**: Once those technical details are in the graph, I can regenerate this guide to include a "Command Reference" section that is directly cited from the new technical memories.