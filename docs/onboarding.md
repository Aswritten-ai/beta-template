# Welcome to the Beta: Building a Living Worldview

Welcome to the beta. You are here to help us validate a new category of organizational intelligence: the **Living Worldview**. This is not another documentation tool or a passive knowledge base. It is a Git-native narrative engine that transforms intentional memory-saving into a unified source of truth for every AI agent in your organization.

By participating in this beta, you are testing the hypothesis that organizational alignment isn't a communication problem—it's a version control problem. You will be using Git-native narrative evolution to branch, peer-review, and merge your company’s strategic direction just as you do with code.

## The Concept Model: One Worldview, Many Roles

Traditional organizations suffer from "narrative debt"—the gap between a founder's vision, a developer's implementation, and a salesperson's pitch. We solve this by unifying three product pillars into a single workflow:

1.  **Intentional Memory-Saving**: You capture high-context moments (ADRs, call notes, strategic pivots) as raw Markdown.
2.  **Compiled Worldview**: Our engine processes these memories into an RDF knowledge graph (the SNAPSHOT), creating a queryable "brain" for the company.
3.  **AI Alignment**: Every AI agent—whether writing a README, a pitch deck, or a sales email—queries the same compiled snapshot, ensuring they never hallucinate facts that contradict your latest decisions.

This approach replaces "documentation debt" with "worldview building." When you save a memory, you aren't just filing a report; you are updating the weights of the model that guides your entire AI workforce.

## Getting Started

### Prerequisites
*   **GitHub Access**: You need a dedicated repository for your collective memory.
*   **MCP-Compatible AI Client**: We recommend Claude Desktop or any client supporting the Model Context Protocol (MCP) to interface with your memory server.

### Initial Setup
1.  **Repo Structure**: Initialize your repository with two main directories: `/memories` (for your raw `.md` files) and `/transactions` (where the engine stores `.sparql` updates).
2.  **Connect the MCP Server**: Point your AI client to the `aswritten-mcp` server. This allows your AI to "read" the compiled worldview and "write" new memories back to the repo.

### Your First Memory: The Strategic Decision
Don't start with a status update. Start with a decision. Save an Architecture Decision Record (ADR) or a summary of a strategic pivot.
*   **File naming**: Use the convention `YYYY-MM-DD-kebab-case-description.md`.
*   **Content**: Focus on the *why*. What was the prior state? What is the new conviction?

### Compiling the Worldview
Once your memory is committed, run the `compile` command. This transforms your Markdown into an RDF snapshot. You can now ask your AI: *"What is our current conviction on [Topic X]?"* and it will answer based on the primary source you just wrote.

## The Core Workflow

1.  **Save memories as you work**: Capture the "why" behind the "what."
2.  **Compile to see the worldview**: The snapshot becomes the source of truth for all agents.
3.  **Generate content from worldview**: Stop writing READMEs or pitch decks from scratch. Tell the AI: *"Generate a product brief based on the latest worldview snapshot."*
4.  **Branch when perspectives diverge**: If the leadership team is debating a new market entry, create a branch. The PR process becomes the venue for resolving organizational disagreement.

## Cross-Functional Ripple Effects

The power of a living worldview is how a single memory flows through different roles:

*   **The Developer's ADR**: A developer saves a memory deciding to use a specific API for security reasons.
    *   *Sales Impact*: When a prospect asks about data privacy, the Sales AI generates an answer grounded in that specific technical decision.
*   **The Sales Discovery**: A salesperson saves notes from a lost deal citing a missing feature.
    *   *Product Impact*: The PM queries the worldview for "blockers" and sees the trend across multiple memories, informing the next sprint.
*   **The Executive Pivot**: The CEO merges a PR shifting the company focus from SMB to Enterprise.
    *   *Global Impact*: Every AI-generated output—from the website copy to the technical documentation—automatically updates to reflect the enterprise-first narrative.

## What to Try During Beta

*   **Test the "Conviction" levels**: Use the ontology terms (notion, stake, boulder, grave) to signal how firm a decision is. See if the AI respects these weights.[^conviction]
*   **Query from different perspectives**: Ask the AI, "As a new engineer, what is the most important thing I need to know about our architecture?" then ask, "As a VC, why is our approach defensible?"
*   **Create a Narrative Branch**: Branch the repo to explore a "What If" strategy. Generate a pitch deck from that branch and compare it to the main branch.
*   **Observe the Delta**: When you update a memory, check how the AI explains the change from the prior state.

## Technical Notes

### Key Operations
*   **Compile**: Aggregates memories into the RDF snapshot.
*   **Extract**: Pulls facts and entities from raw text into the graph.
*   **Transaction (TX)**: The intermediate `.sparql` step that traces a fact back to its source memory.

### Layer Compilation
When querying the worldview, you can specify layers:
*   `worldview`: A high-level overview of concepts.
*   `worldview:{domain}`: Deep dive into specific areas (e.g., `worldview:engineering`).
*   `graph`: The full RDF structure for complex tracing.

## Getting Help & Giving Feedback

We are looking for "narrative friction." If the compiled worldview feels out of sync with your intent, or if branching strategy feels clunky, we want to know.
*   **Report Issues**: Use the GitHub Issue tracker in your memory repo.
*   **Share Insights**: What memory types (ADRs, call notes, Slack snippets) provide the most "signal" for your AI agents?

---

[^conviction]: The ontology defines "Conviction" as the weight assigned to knowledge. Levels include **notion** (exploratory), **stake** (leaning), **boulder** (firm decision), and **grave** (foundational/unchanging). This allows the AI to distinguish between a casual brainstorm and a non-negotiable strategy. (Ontology Definition, `narr:conviction`).