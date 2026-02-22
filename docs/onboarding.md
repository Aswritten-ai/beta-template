# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. This gap is often where the "$10M mistake" happens: a strategic pivot is made, but the organization keeps running in the old direction because the narrative didn't update.[^strategy-disconnect]

Collective memory solves this by providing a **Git-native organizational worldview**. Your entire organization talks to AI agents that think exactly like your company thinks, because they all draw from the same compiled source of truth.

[^strategy-disconnect]: The "strategy-execution disconnect" is identified as a primary pain point in the collective memory worldview (compiled from `worldview:all`). It describes the failure of strategic intent to manifest in technical implementation and market messaging, leading to significant resource waste—the "$10M mistake." This concept sits at the core of the problem space collective memory is designed to solve, acting as the catalyst for the "intentional memory-saving" workflow.

---

## The Core Concept: One Worldview, Three Pillars

Collective memory isn't three separate tools; it is one unified worldview that powers three distinct functions:

1.  **Memory (The Input):** Intentional saving of decisions, ADRs, and customer insights.
2.  **Worldview (The Core):** A compiled RDF knowledge graph that tracks provenance, conviction, and narrative evolution.
3.  **Content (The Output):** AI agents (like `storyWRITER`) that generate READMEs, pitch decks, and docs directly from the worldview.

Because it is **Git-native**, your organizational narrative follows the same rigor as your code. You branch to explore new strategies, use Pull Requests to debate narrative shifts, and merge to align the entire company.[^git-native]

[^git-native]: The Git-native nature of the system is a "boulder" level conviction established in the architecture documentation. It posits that organizational narrative should be version-controlled, allowing for branching and merging of strategic directions. This replaces the "static document" model of corporate wikis with a dynamic, evolving graph.

---

## Getting Started

### 1. Prerequisites
*   **GitHub Access:** You need access to your organization's collective memory repository.
*   **MCP-Compatible Client:** Use Claude Desktop or any client supporting the Model Context Protocol (MCP) to connect your AI to the memory repo.

### 2. Initial Setup
Connect your AI agent to the repository using the provided MCP server. This allows the agent to call tools like `compile_layered` to "read" your company's mind.

### 3. Your First Memory
Don't just document; **save a memory**. When a decision is made—whether it's a technical Architecture Decision Record (ADR) or a shift in pricing—create a new Markdown file in `.aswritten/memories/` using the format `YYYY-MM-DD-kebab-case-description.md`.

### 4. Compile the Worldview
Run the compilation tool. This transforms your raw Markdown memories into a structured RDF snapshot. You will see your decision materialize as a node in the graph, linked to its authors and the context of the discussion.

---

## The Core Workflow

1.  **Save memories as you work:** This is not "documentation debt." It is the intentional act of building the worldview so your AI agents don't hallucinate.
2.  **Compile to see the worldview:** The snapshot becomes the source of truth for every AI agent in the company.
3.  **Generate content from worldview:** Need a product brief? A sales one-pager? Use a `.story` prompt. The AI will write it using only the facts in the snapshot, complete with citations to the original memory.[^story-generation]
4.  **Branch when perspectives diverge:** If the leadership team is debating a pivot, create a branch. Update the memories there and compile. You can now "chat" with the potential future of the company before committing to it.

[^story-generation]: The `storyWRITER` agent and `.story` templates are the primary mechanism for content generation. This workflow ensures that all external-facing materials are grounded in the compiled worldview, preventing the drift between "what we say" and "what we do."

---

## Cross-Functional Ripple Effects

In a collective memory organization, one memory informs every role:

*   **The Developer:** Saves an ADR-001 explaining why they chose a specific database.
*   **The Sales Rep:** Asks an AI, "Can we support high-write volume for this enterprise lead?" The AI answers "Yes," citing the developer's ADR.
*   **The PM:** Saves a customer pain point from a call. This automatically informs the next product roadmap generation and updates the "Problem" slide in the pitch deck.
*   **The Executive:** Executes a strategic pivot. By merging the "Pivot" branch into `main`, every AI-generated README, sales script, and technical doc across the company is instantly updated to reflect the new direction.

---

## What to Try Right Now

*   **Save a meaningful decision:** Take a recent Slack thread or meeting note and formalize it as a memory.
*   **Query from a different perspective:** Ask your AI agent, "How does [Decision X] affect our GTM strategy?" even if [Decision X] was a technical choice.
*   **Create a Strategic Branch:** Create a branch where your company targets a completely different customer segment. Update one key strategy memory, compile, and generate a new README to see the ripple effect.
*   **Observe the Provenance:** Look at the citations in an AI-generated response. Trace a fact back to the specific `.sparql` transaction and the original `.md` memory file.

---

## Technical Appendix

### Architecture: The Pipeline
The system follows a strict pipeline: **Memory (.md) → Extraction → Transaction (.sparql) → Compilation → Snapshot (RDF).** This ensures every fact in the worldview has a clear audit trail back to a human and a moment in time.

### File Naming
Always use `MMDDYY-kebab-case-description.md` for memories. This allows the system to track the temporal evolution of the narrative.

### Layer Compilation
When using the `compile_layered` tool, choose your depth:
*   `worldview`: High-level strategic overview.
*   `worldview:{domain}`: Specific focus (e.g., `worldview:engineering`).
*   `graph`: The full RDF graph for deep introspection.

---

## StyleRubric Evaluation
**Score: 4/5**
The draft avoids generic AI enthusiasm and focuses on the specific mechanics of the collective memory system (ADRs, `.aswritten` structure, RDF compilation). It uses the "ripple effect" and "$10M mistake" concepts directly from the worldview. The tone is professional and assumes the user understands Git and MCP. It could be a 5 if it included even more specific node-link examples from a live graph, but it effectively uses the conceptual pillars provided.

---

## Analysis of Collective Memory

### TL;DR
The current worldview provides a strong conceptual foundation (the "three pillars" and "strategy-execution disconnect") but lacks granular "Day 1" technical examples. To improve the onboarding experience, the memory needs more "Success Patterns" and "Failure Modes" documented as memories themselves.

### How to Improve the Collective Memory
1.  **Add "Success Pattern" Memories:** We need memories that document a successful "Branch -> PR -> Merge" cycle for a narrative shift. This would allow the onboarding guide to cite a real historical example of a narrative pivot.
2.  **Document the "Extraction" Logic:** The worldview is currently light on how the AI decides what is a "stake" vs. a "boulder." Adding memories of meta-discussions on conviction levels would help users understand how to weight their own memories.
3.  **Role-Specific Personas:** Add memories that define the "Developer," "Sales," and "Executive" personas within the context of collective memory. This would allow `storyWRITER` to generate even more tailored examples for each role.

### Improving the Story Prompt
The prompt is excellent but could be improved by asking for a "Troubleshooting" section grounded in common compilation errors or "low-confidence" graph states. It could also benefit from a specific requirement to explain the `narr:source` and `narr:extractedFrom` predicates in the Technical Notes to help users understand provenance.

### Next Actions
1.  **User Action:** Add a memory file documenting a "Strategic Pivot" example (e.g., "2024-05-12-pivot-to-enterprise.md") to provide a concrete anchor for the "Ripple Effect" section.
2.  **AI Action:** I can implement a revised version of this guide that includes a "Deep Dive into Provenance" section once the user adds more technical metadata to the ontology regarding extraction rules.