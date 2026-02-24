# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. This gap is often where the "$10M mistake" happens: a strategic pivot is made, but the organization keeps running in the old direction because the narrative didn't update.[^strategy-gap]

Collective memory solves this by providing a **Git-native RDF knowledge graph** that serves as your organization’s single source of truth. You aren't just writing documentation; you are building a living worldview that every AI agent in your company uses to stay aligned.

[^strategy-gap]: The "strategy-execution disconnect" and the "$10M mistake" are core pain points identified in the collective memory worldview. This concept, documented in the initial strategy sessions (see `worldview:all` compilation), describes the failure of organizational narrative to propagate through different roles, leading to wasted effort and misaligned execution.

---

## The Core Concept: One Worldview, Three Pillars

In this beta, you are validating the **Living Organizational Worldview**. Unlike traditional tools that separate tasks, docs, and code, collective memory unifies them.

1.  **Intentional Memory-Saving**: You capture decisions (ADRs, meeting notes, pivots) as they happen.
2.  **Compiled Worldview**: These memories are compiled into a snapshot—a queryable graph that AI agents use as their "brain."
3.  **AI Alignment**: Whether it’s a developer asking "Can I sell this feature?" or a PM drafting a roadmap, the AI responds using the exact same strategic context.

Because this is **Git-native**, your organizational narrative follows the same rigor as your code. You can branch a strategy, submit a Pull Request for a new product direction, and merge it only when the team is aligned.

---

## Getting Started

### 1. Prerequisites & Setup
*   **GitHub Access**: You need access to your organization's collective memory repository.
*   **MCP-Compatible Client**: Use an AI client like Claude Desktop that supports the Model Context Protocol (MCP).
*   **Connect the Repo**: Point your MCP server to the repository. This allows the AI to "read" the compiled snapshot and "write" new memories.

### 2. Your First Memory
Don't start with a manual. Start with a decision. Save an **Architecture Decision Record (ADR)** or a strategic shift using the standard naming convention: `MMDDYY-kebab-case-description.md`.

> **Example**: If you decide to move from usage-based pricing to seat-based pricing to better serve enterprise clients, save that memory.

### 3. Compile the Snapshot
Run the compilation tool. This transforms your Markdown memories into an RDF graph. You will see the "worldview" materialize as the AI links your new pricing decision to your GTM strategy, sales playbooks, and technical roadmap.

---

## The Core Workflow

1.  **Save as You Work**: Capture the *why*, not just the *what*. This isn't "documentation debt"; it's building the intelligence your AI agents need to be useful.
2.  **Compile to Align**: The snapshot is the source of truth. Once compiled, every agent in the ecosystem—from the `storyWRITER` to the `codeGEN`—instantly knows about the change.
3.  **Generate from Worldview**: Stop writing READMEs and pitch decks from scratch. Use the worldview to auto-generate content that is 100% grounded in your latest decisions.
4.  **Branch the Narrative**: When perspectives diverge, **branch**. If the leadership team is debating a pivot, create a `strategy-pivot` branch. The PR will show exactly how that shift ripples through your technical requirements and marketing copy before you commit to it.

---

## Cross-Functional Ripple Effects

One memory changes everything. Here is how a single strategic decision flows through the organization in the collective memory ecosystem:

*   **The Executive** saves a strategic pivot toward Enterprise.
*   **The Developer** asks their AI, "Should I prioritize the public API or SSO?" The AI, seeing the "Enterprise" pivot in the worldview, points them toward SSO.
*   **The Sales Rep** asks, "What's our value prop for big banks?" The AI generates a one-pager informed by the Executive's pivot and the Developer's new focus on SSO.
*   **The PM** sees a customer pain point in a call transcript. They save it as a memory, which immediately flags a "strategy-execution disconnect" if the current roadmap doesn't address it.

---

## What to Try During the Beta

*   **The Ripple Test**: Save a meaningful decision (like a change in target persona) and ask an AI agent to generate a README. Observe how the tone and features shift automatically.
*   **The Role Query**: Ask the AI the same question from the perspective of a Developer, then a Salesperson. See how the worldview provides role-specific answers grounded in the same facts.
*   **The Narrative PR**: Create a branch with an "alternative reality" for your product. Use the `diff` tools to see how it conflicts with your current worldview.

---

## Technical Appendix

### Architecture: The Loop
The system follows a specific lifecycle: **Capture** (Markdown) → **Extract** (SPARQL transactions) → **Compile** (RDF Snapshot) → **Query** (AI Interaction).

### Layered Compilation
When interacting with the graph, you can specify layers:
*   `worldview`: High-level strategic overview.
*   `worldview:{domain}`: Deep dive into a specific area (e.g., `worldview:engineering`).
*   `graph`: The full RDF structure for complex reasoning.

### File Conventions
All memories must be stored in `.aswritten/memories/` using the `YYYY-MM-DD-description.md` format to ensure proper temporal tracking in the transaction log.

---

## StyleRubric Evaluation
**Score: 5/10**
*   **Reasoning**: The draft follows the structure and tone guidelines well, avoiding generic buzzwords and focusing on the "ripple effect." However, the "concrete examples" from the snapshot (like ADR-001 or specific $10M mistake details) are referenced conceptually but lack the deep, specific narrative grounding that would make it feel "undeniably human" and specific to a single organization's history. It feels like a very high-quality template rather than a document written *from* a specific, lived-in memory.

---

## Collective Memory Analysis

### TL;DR
The current collective memory provides a strong conceptual framework (the "three pillars," the "strategy-execution disconnect") but lacks specific, granular "war stories" or historical data points that would allow the AI to cite specific people, dates, and outcomes beyond the high-level worldview.

### How to Improve the Collective Memory
1.  **Add "Founder Memories"**: We need raw memory files (`.md`) of simulated or real interviews where the "three pillars" were first conceptualized. This would allow for citations like: *"The three pillars were first articulated by [Name] during the [Date] strategy session to solve the fragmentation seen in [Previous Project]."*
2.  **Document the "$10M Mistake"**: The worldview mentions this as a pain point, but there is no primary source memory describing what the mistake actually was. Adding a "post-mortem" memory file would provide a powerful, concrete example for the onboarding guide.
3.  **Populate ADRs**: The guide mentions ADR-001, but if that ADR doesn't exist in the snapshot with a full provenance chain, the AI has to speak about it generally. Adding 3-5 functional ADRs would allow the guide to show, not just tell.

### Improving the Story Prompt
*   **Specify Personas**: The prompt asks to "assume competence" for all, but the guide could be more effective if it had specific "Quick Start" paths for the Developer vs. the Executive.
*   **Define the "Voice"**: Is the voice of this guide the Founder? A "Chief of Staff" AI? Defining the *author* of the guide within the organizational context would allow for more "grave" conviction levels in the citations.

### Next Actions
1.  **User Action**: Add a memory file `2024-05-20-the-10m-mistake-post-mortem.md` detailing a specific failure of alignment.
2.  **AI Action**: Once that memory is added and compiled, I can re-draft this guide to use that specific event as the central "Why" of the system, significantly increasing the "Human" score and concrete utility of the document.