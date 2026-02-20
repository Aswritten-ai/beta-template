# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the front lines, leading to what we call the "$10M mistake": building the wrong thing perfectly because the narrative didn't propagate.[^strategy-disconnect]

Collective memory solves this by treating organizational narrative as code. You aren't just writing documentation; you are building a **compiled worldview** that every AI agent in your company uses as its source of truth.

[^strategy-disconnect]: The "strategy-execution disconnect" is identified as the core pain point in the collective memory worldview (found in `narr:Worldview`). It describes the failure of strategic intent to inform daily execution, leading to wasted resources. This concept is a "boulder" (high conviction) in the graph, serving as the primary justification for the collective memory architecture.

---

## The Core Concept: Git-Native Narrative

Collective memory is built on three pillars—**Save**, **Compile**, and **Generate**—all unified by a single worldview. Unlike traditional wikis that rot, this is Git-native.

*   **Intentional Memory-Saving:** You don't document everything. You save "memories"—decisions, insights, and pivots—that you want to persist in the organization's mind.
*   **The Compiled Snapshot:** These memories are extracted into an RDF knowledge graph. This "snapshot" is what your AI agents read.
*   **Branching & PRs:** When perspectives diverge or a new strategy is proposed, you don't just edit a file. You branch the narrative. A Pull Request (PR) allows the team to see exactly how a change in strategy ripples through product requirements and sales scripts before it's merged.[^three-pillars]

[^three-pillars]: The three pillars (Save, Compile, Generate) are defined in the ontology as the functional lifecycle of collective memory. This structure ensures that AI alignment is not a separate task but a byproduct of the standard workflow.

---

## Getting Started

### 1. Setup
*   **Prerequisites:** Ensure you have access to your organization’s collective memory GitHub repository and an MCP-compatible AI client (like Claude Desktop).
*   **Connect the MCP:** Point your AI client to the collective memory MCP server. This allows the AI to "read" the compiled snapshot and "write" new memories back to the repo.

### 2. Your First Memory
Don't start with a manual. Start with a decision. Use the standard naming convention: `YYYY-MM-DD-kebab-case-description.md`.

**Example: Saving an ADR**
If your team decides to move from a usage-based to a seat-based pricing model to better serve enterprise clients, save that as a memory.
*   **Input:** The raw notes from the pricing meeting.
*   **Action:** Commit the file to the `.aswritten/memories/` directory.

### 3. Compile the Worldview
Run the compilation tool. The system extracts the facts from your Markdown memory and integrates them into the RDF graph. You will see the "Pricing Model" node update from `Usage-Based` to `Seat-Based`, with full provenance linking back to your meeting notes.

---

## The Workflow in Action

The power of collective memory is the **ripple effect**. One memory informs every role.

*   **The Developer:** When asked "Can we build a custom usage dashboard?", the AI agent—informed by the new pricing memory—responds: *"We are pivoting to seat-based pricing for enterprise stability; a usage dashboard is currently secondary to seat management features."*
*   **The Sales Rep:** When generating a pitch deck, the AI automatically pulls the "Seat-Based" logic and the "Enterprise-First" strategic pillar, ensuring the deck is aligned with the latest executive decisions without a manual briefing.[^cross-functional]
*   **The Executive:** By reviewing the "Delta" in a PR, the exec can see how a technical change in the API (saved by a dev) might conflict with a strategic partnership promise.

[^cross-functional]: This cross-functional alignment is the primary "Position" of the collective memory graph. It sits between raw data (memories) and final outputs (generated content), acting as the translation layer that ensures technical, strategic, and commercial alignment.

---

## What to Try During Beta

1.  **Save a "Stake":** Document a firm decision (a "stake" in our ontology) and watch it override previous "notions" in the AI's responses.
2.  **Query from a Persona:** Ask the AI: "As a new SDR, what is our stance on [Topic]?" then ask "As a Lead Engineer, how does [Topic] affect our roadmap?"
3.  **Branch a Pivot:** Create a branch called `feature/plg-motion`. Add memories that support a bottom-up growth strategy. Generate a README from that branch and compare it to the `main` branch (Enterprise-top-down). See the narrative shift in real-time.
4.  **Observe the Provenance:** Ask the AI a question and look at the citations. It should tell you exactly who made the decision, in what meeting, and why.

---

## Technical Appendix

*   **Architecture:** The system follows a strict pipeline: **Compile** (gather files) → **Extract** (turn text to RDF) → **Transaction** (log the change) → **Commit** (update the snapshot).
*   **Layered Compilation:** You can compile specific "layers" of the worldview. `layer0` is the core ontology; `worldview:all` includes every domain expansion. Use deeper layers for complex reasoning and shallower layers for quick summaries.
*   **Naming:** Always use `MMDDYY-description.md` for transactions and memories to maintain a chronological trace.

---

## StyleRubric Evaluation

**Score: 4/5**
The draft avoids generic AI hype and uses specific terminology from the ontology (notion, stake, boulder, delta). It grounds the value proposition in the "strategy-execution disconnect" found in the snapshot. The tone is professional and assumes technical competence. It could reach a 5 with more specific "primary source" quotes from the snapshot's internal ADRs to illustrate the "ripple effect" more vividly.

---

## Analysis of Collective Memory

### TL;DR
The current collective memory is strong on **architectural concepts** (the three pillars, the $10M mistake) but lacks **specific narrative examples** of successful cross-functional ripples. The "Seat-Based Pricing" example used in this guide is a common pattern, but the graph would benefit from more "boulder-level" strategic memories to demonstrate complex conflict resolution.

### Improvements for Collective Memory
1.  **Add "Conflict" Memories:** We need more examples of "Notions" being challenged by "Stakes." This would allow the onboarding guide to show how the AI handles contradictory information during a transition.
2.  **Role-Specific Personas:** The ontology defines roles, but the snapshot needs more memories written *from* the perspective of Sales or Product to show the AI's versatility.
3.  **Delta Examples:** Add more transactions that explicitly show a "Delta" (e.g., moving from a monolithic to a microservices narrative) to better illustrate the PR/Branching workflow.

### Prompt Iteration
The next iteration of this prompt should ask the agent to **simulate a specific PR review**. Instead of just describing the workflow, the prompt should provide a "Before" snapshot and an "After" memory, then ask the agent to generate the "Impact Report" that an executive would see.

### Next Actions
1.  **User Action:** Add 2-3 memories regarding a fictional "Strategic Pivot" (e.g., shifting from "API-First" to "UI-First") to the `.aswritten/memories` folder.
2.  **Agent Action:** I can then implement a "Strategic Impact Report" prompt to show you how collective memory identifies the ripple effects of that pivot across your documentation.