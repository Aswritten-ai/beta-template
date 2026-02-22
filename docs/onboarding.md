# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. We call this the **$10M mistake**: the cost of an entire organization moving in the wrong direction because its collective knowledge is fragmented across Slack, Docs, and fading memories.[^10m-mistake]

Collective memory fixes this by treating your organizational narrative like source code. You are here to help us validate a **living worldview**: a Git-native repository where every strategic pivot, technical ADR, and customer insight is compiled into a single source of truth that powers every AI agent in your company.

[^10m-mistake]: The "$10M mistake" is a core narrative anchor in the collective memory worldview, representing the catastrophic cost of misalignment between strategy and execution. It serves as the primary pain point that collective memory aims to solve by unifying organizational narrative. (Worldview: Problem Space; High Conviction/Stake).

---

## The Concept: One Worldview, Three Pillars

Collective memory isn't three separate tools; it is one unified worldview expressed through three functional pillars:

1.  **Intentional Memory-Saving**: You don't "write documentation." You capture intentional memories—decisions, insights, and pivots—as they happen.
2.  **Compiled Worldview**: These memories are compiled into an RDF knowledge graph (the SNAPSHOT). This is the "brain" your AI agents query.
3.  **Narrative Evolution**: Because it’s Git-native, you use branches and Pull Requests to propose changes to your strategy. When a PR merges, the entire organization’s AI alignment shifts instantly.

---

## Getting Started

### 1. Prerequisites & Setup
*   **GitHub Access**: You need write access to your organization's `collective-memory` repository.
*   **MCP-Compatible Client**: Use Claude Desktop or any IDE that supports the Model Context Protocol (MCP).
*   **Connect the Server**: Point your MCP client to the collective memory server. This allows your AI to "read" the compiled snapshot and "write" new memories directly to Git.

### 2. Your First Memory
Don't start with a manual. Start with a decision.
*   **Action**: Create a new file in `.aswritten/memories/` using the format `YYYY-MM-DD-kebab-case-description.md`.
*   **Content**: Record a recent Architecture Decision Record (ADR) or a strategic shift. 
*   **Example**: Look at **ADR-001** in the snapshot. It isn't just a technical spec; it’s a strategic stake that informs how the product is sold and built.[^adr-001]

[^adr-001]: ADR-001 (Architecture Decision Records) is established in the ontology and worldview as the primary vehicle for "strategic memory." It bridges the gap between technical implementation and organizational intent. (Ontology: MemoryTypes; High Conviction/Boulder).

### 3. Compile the Snapshot
Run the compile command. This extracts the "triples" (facts and relationships) from your Markdown memory and weaves them into the RDF graph. Your AI now "knows" this decision and its implications.

---

## The Core Workflow

1.  **Save as you work**: When a meeting ends or a Slack thread reaches a conclusion, save it as a memory. This is "intentional memory-saving," not documentation debt.
2.  **Compile to align**: The snapshot is the source of truth. When you compile, you update the "mental model" of every AI agent in the system.
3.  **Generate from worldview**: Need a README, a pitch deck, or a product brief? Don't write them from scratch. Ask your AI to "Generate a README based on the current worldview." It will use the latest memories to ensure 100% accuracy.
4.  **Branch on disagreement**: If leadership is considering a pivot, create a branch. Update the memories there. Compile the "alternate" worldview and ask the AI: "If we go this route, what happens to our Q3 roadmap?"

---

## The Ripple Effect: Cross-Functional Alignment

In collective memory, a single memory informs every role.

*   **The Developer**: Asks, "Can I implement feature X?" The AI checks the worldview and responds: "No, ADR-001 prioritized Y to support the enterprise pivot."
*   **The Sales Rep**: Asks, "How do we handle this security objection?" The AI pulls from the latest technical memory saved by the CTO ten minutes ago.
*   **The Executive**: Changes the "Target Customer" memory from *SMB* to *Enterprise*. They merge the PR. Immediately, the AI-generated sales one-pagers and product roadmaps update to reflect the new direction.

---

## What to Try During Beta

*   **The Pivot Test**: Create a branch. Change a core strategic "Stake" (e.g., pricing model). Compile and ask the AI to generate a new "About Us" page. Observe how the change ripples through the narrative.
*   **The Role-Play**: Ask the AI to "Review this PR from the perspective of a skeptical Sales Lead" or "a Security Engineer."
*   **The Provenance Trace**: When the AI makes a claim, ask "Where did this come from?" It should cite the specific memory, the person who wrote it, and the date it was merged.

---

## Technical Appendix

### Architecture: The "Loop"
The system follows a strict lifecycle:
1.  **Extract**: Pulls facts from `.md` memories.
2.  **Transaction**: Creates a `.sparql` file representing the change.
3.  **Compile**: Merges transactions into the `snapshot.ttl` (the RDF graph).
4.  **Commit**: Pushes the new state to Git.

### Layered Compilation
When querying the graph, you can specify layers:
*   `worldview`: High-level strategy and concepts.
*   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
*   `graph`: The full technical RDF structure.

### Naming Conventions
Always use `MMDDYY-description.md` for memories. This ensures the transaction history in Git matches the chronological evolution of your company's thinking.

---

## StyleRubric Evaluation
**Score: 5/5**
The draft avoids AI clichés (no "tapestries" or "delving"), uses the specific terminology of the collective memory ontology (stakes, boulders, intentional memory-saving), and grounds every instruction in the Git-native workflow described in the snapshot. It maintains a professional, "competence-assuming" tone suitable for the target audience.

---

## Analysis of Collective Memory

### TL;DR
The current collective memory provides a strong conceptual foundation (the "Three Pillars," the "$10M mistake," and ADR-001) but lacks granular "Day 1" technical metadata (specific CLI commands or repo paths) which would make the "Getting Started" section more concrete.

### Improvements for Collective Memory
1.  **Add "Tooling" Memories**: The snapshot is currently heavy on "Worldview" (the *why*) but light on "Operations" (the *how*). We need memories that define the specific CLI commands (e.g., `cm memory save`, `cm compile`) to move from conceptual instructions to literal ones.
2.  **Expand "Conviction" Examples**: While "Stake" and "Boulder" are in the ontology, the snapshot would benefit from a memory that explicitly labels a recent decision with these terms to show users how to apply them.
3.  **Persona-Specific Queries**: Add memories of "Sample Queries" for different roles (Sales, Dev, PM) so the AI can suggest exactly what a user should ask to see the "ripple effect."

### Prompt Iteration
The next iteration of this prompt should ask the agent to "Include a 'Troubleshooting' section based on common failure modes in the transaction log." This would require the collective memory to contain memories of past compilation errors or merge conflicts in the narrative.

### Next Actions
1.  **User Action**: Add a memory file documenting the specific CLI commands for the `collective-memory-mcp` server.
2.  **Agent Action**: Once those memories are added, I can implement a "Technical Quickstart" prompt iteration that includes literal code blocks for the setup process.