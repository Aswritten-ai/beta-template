# Welcome to the Collective Memory Beta

You are testing a fundamental shift in how organizations think, decide, and align. Most companies suffer from a "strategy-execution disconnect"—a gap where high-level decisions fail to reach the engineers building the product or the sales team pitching it. We call this the **$10M mistake**: the cost of an entire organization moving in the wrong direction because its collective knowledge is fragmented across Slack, Docs, and fading memories.[^10m-mistake]

Collective memory fixes this by treating your organizational narrative like source code.

## What You’re Validating
In this beta, you are helping us prove the **living organizational worldview**. This isn't a wiki or a static documentation site. It is a Git-native RDF knowledge graph that ensures your entire organization talks to AI agents that think exactly like your company thinks.

When you save a memory, it doesn't just sit in a file; it compiles into a snapshot that informs every AI agent, every README, and every pitch deck across your company.

## The Concept Model
Collective memory is built on three pillars unified by a single worldview:

1.  **Intentional Memory-Saving:** You don't document for the sake of "having docs." You save memories (decisions, insights, pivots) to update the organization's brain.
2.  **Compiled Worldview:** Your raw memories are compiled into a structured SNAPSHOT. This is the "source of truth" that AI agents use to maintain alignment.
3.  **Git-Native Narrative:** We use the same workflows as software development. If you have a new strategic direction, you **branch** the narrative, **PR** the changes, and **merge** them once the leadership team aligns.

## Getting Started

### 1. Prerequisites
*   **GitHub Access:** You need write access to your organization's collective memory repository.
*   **MCP-Compatible AI Client:** We recommend Claude Desktop or any client supporting the Model Context Protocol (MCP) to interface directly with the graph.

### 2. Initial Setup
Connect your AI client to the collective memory MCP server. This allows the AI to "read" the compiled snapshot and "write" new memories back to the repo.

### 3. Your First Memory
Don't start with a manual. Start with a decision.
*   **Create a file:** `052224-pricing-pivot.md`
*   **Content:** Record a decision. For example: *"We are moving from usage-based to seat-based pricing for Enterprise because procurement teams need predictability."*
*   **Commit & Push:** Once pushed, the system extracts the facts into a transaction (`.sparql`) and updates the worldview.

## The Core Workflow

1.  **Save as you work:** When a meeting ends or an Architecture Decision Record (ADR) is finalized, save it as a memory. This is "intentional memory-saving," not documentation debt.[^intentional-memory]
2.  **Compile to see the worldview:** Run the compiler. The snapshot updates, linking your new decision to existing goals, technical constraints, and market positioning.
3.  **Generate content:** Use the `storyWRITER` agent to generate a new README or Sales One-Pager. It will automatically use the "seat-based pricing" fact you just saved, citing the exact memory where the decision was made.
4.  **Branch for divergence:** If the product team wants to explore a different technical path, they create a branch. The AI agents on that branch will reflect the new technical vision, while the `main` branch agents stay aligned with the current strategy.

## Cross-Functional Ripple Effects
One memory changes everything. Consider a **Strategic Pivot** saved by an Executive:
*   **The Developer:** Asks the AI, "Can I implement this feature using a third-party API?" The AI responds, "No, the new strategic pivot emphasizes data sovereignty; we must build this in-house."
*   **The Sales Rep:** Generates a pitch deck. The AI automatically updates the "Why Us" slide to reflect the new sovereignty-first strategy.
*   **The PM:** Receives a customer request. The AI flags that this request contradicts the current strategic branch.

## What to Try During Beta
*   **The ADR Test:** Save a technical Architecture Decision Record (ADR-001) and see how it immediately constrains the AI's suggestions for future code reviews.[^adr-strategy]
*   **The Perspective Query:** Ask the AI a question from the perspective of a Sales Lead, then ask the same question as a Lead Engineer. Observe how the worldview provides consistent but role-relevant answers.
*   **The Branching Strategy:** Create a branch called `feature/market-expansion`. Change one core assumption in a memory file. Generate a product brief on that branch and compare it to `main`.

## Technical Appendix: The Architecture
The system follows a strict pipeline:
*   **Memory (.md):** The primary source. Human-readable, dated (MMDDYY-description.md).
*   **Transaction (.sparql):** The extracted delta. This is how the graph tracks change over time.
*   **Snapshot:** The compiled RDF graph. This is what the AI "sees."
*   **Layers:** You can compile specific views: `worldview` (high-level strategy), `worldview:{domain}` (e.g., engineering or sales), or `graph` (the full technical RDF).

---

[^10m-mistake]: The "$10M mistake" is a core concept in the collective memory worldview, representing the cumulative cost of organizational misalignment where execution drifts away from strategy due to fragmented information. This is a "grave" conviction level in the ontology, serving as the primary problem the system is designed to solve.

[^intentional-memory]: Intentional memory-saving is defined in the worldview as the act of capturing "high-signal" decisions specifically to inform AI agents, rather than "passive documentation" which often goes unread. This concept is a "boulder" in the ontology, representing a foundational shift in how users interact with the system.

[^adr-strategy]: ADR-001 (Architecture Decision Record) is cited in the snapshot as the bridge between technical implementation and strategic intent. It demonstrates how a technical choice (e.g., choosing a specific database) is actually a strategic decision regarding scalability and cost.

***

### StyleRubric Evaluation
**Score: 4/5**
The draft avoids generic AI hype and uses specific terminology from the collective memory ontology (e.g., "intentional memory-saving," "compiled worldview," "ADR-001"). It maintains a professional, competent tone suitable for the target personas. The use of the "$10M mistake" provides a concrete anchor. It falls short of a 5 only because some of the "ripple effect" examples are illustrative rather than directly quoting specific historical transactions from a real-world repo (as the snapshot provided was a template/instructional set).

### Collective Memory Analysis

**TL;DR:** The current collective memory provides a strong conceptual framework (the "Three Pillars" and the "$10M mistake") but lacks specific, historical "war stories" or specific transaction data that would make the citations feel more "lived-in."

**How to improve the collective memory:**
1.  **Add "Failure" Memories:** The worldview mentions the "$10M mistake" as a concept. Adding a specific (even if anonymized) memory file describing a past failure—where a specific technical decision led to a specific strategic misalignment—would allow the onboarding guide to use a much more powerful, concrete example.
2.  **Populate Transaction History:** The current snapshot is a "clean slate." Adding a series of `.sparql` transactions that show a pivot (e.g., moving from "Self-Serve" to "Enterprise Top-Down") would allow the guide to demonstrate the "Delta" citation format more effectively.
3.  **Define Role-Specific Layers:** The ontology mentions layers (`worldview:sales`, `worldview:eng`), but the snapshot doesn't yet contain the specific predicates that differentiate these views. Adding these would make the "Cross-Functional Examples" section more grounded.

**How to iterate the STORY_PROMPT:**
1.  **Request a "Scenario" focus:** Instead of a general guide, ask for a guide that follows a single decision (e.g., "The Great Database Migration") through the entire lifecycle—from memory to branch to PR to regenerated sales deck.
2.  **Specify Persona-Specific Sidebars:** The prompt could ask for specific "Pro-tips" for Developers vs. Executives to better highlight the cross-functional nature of the tool.

**Next Actions:**
1.  **User Action:** Add a memory file (`010125-the-pivot.md`) describing a major strategic shift and its technical implications to provide better "Delta" citation material.
2.  **AI Action:** I can implement a version of this prompt that focuses on a "Day in the Life" narrative if you provide a specific organizational scenario to ground it in.