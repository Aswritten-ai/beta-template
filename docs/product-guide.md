# Product Concepts: Collective Memory for AI

## What This Document Is
This guide defines the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) cover tool mechanics, this document explains the conceptual framework required to act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a git-native RDF knowledge graph that serves as an organization's single source of truth. It shifts the organizational focus from producing static artifacts to producing a living worldview.[^product-def] Unlike traditional documentation, which often captures only the "what," collective memory captures the "why"—the perspectives, decisions, and rationale that form an organization's identity.[^docs-vs-mem]

Being git-native allows the worldview to benefit from standard software engineering workflows: versioning, branching for proposed changes, and clear provenance for every fact.[^git-native] This structure ensures that every claim in the graph can be traced back to a specific person, context, and moment in time.

[^product-def]: The core mission defines collective memory as a system to "scale organizational intelligence by treating worldview as code" (Daniel, Product Vision Memo, .aswritten/memories/2024-11-10-vision.md). This is a foundational "grave" conviction.
[^docs-vs-mem]: Documentation is described as a "lagging indicator," whereas collective memory is the "generative substrate" from which documentation is rendered (Internal Architecture Review, .aswritten/memories/2025-01-15-arch-review.md).
[^git-native]: Git-native architecture was a direct decision by the founding team to enable "distributed truth-seeking" through PRs and merges (Founders Meeting, .aswritten/memories/2024-12-05-founding-decisions.md).

## Narrative Architecture
The system operates on the "steering vector" thesis: narrative architecture acts as a program installed onto model hardware.[^steering-vector] By providing a structured worldview, the system steers AI agents toward consistent, aligned behavior across different roles—whether in development, sales, or content creation.[^one-worldview]

Multiple narratives compose into a single compiled worldview. This allows the organization to maintain a unified strategy while allowing agents to draw on specific domain expansions relevant to their immediate tasks.

[^steering-vector]: The steering vector concept is a "boulder" conviction, drawing on the idea that "models don't need more fine-tuning; they need better directional meaning provided at inference time" (Tech Lead Note, .aswritten/memories/2025-01-20-steering-vectors.md).
[^one-worldview]: The "one worldview, many agents" model ensures that a sales agent and a dev agent operate from the same set of core truths, even if they use different story templates (Product Strategy, .aswritten/memories/2025-02-02-gtm-strategy.md).

## Memories
Memories are the primary units of knowledge. A "good" memory is a rich primary source—such as a call transcript or a detailed decision log—rather than a sparse summary.[^good-memories] The extraction pipeline benefits from "more material," as the LLM can identify nuances and rationale that a human might omit in a summary.

**The Extraction Pipeline:**
1. **Save:** A memory (.md) is committed to a branch.
2. **Extract:** GitHub Actions trigger an LLM to extract facts into SPARQL transactions (.sparql).
3. **Validate:** The system checks for contradictions and ensures the new facts align with the ontology.
4. **Compile:** The transactions are merged into the snapshot, updating the worldview.

This is an asynchronous process; it typically takes 5–10 minutes for a saved memory to be queryable in the snapshot.[^pipeline-timing]

[^good-memories]: "Never summarize away the nuance. We want the raw word choice of the founder, not a sanitized version" (Content Guidelines, .aswritten/memories/2025-01-10-memory-standards.md).
[^pipeline-timing]: The 5-10 minute latency is a known system constraint documented in the Engineering Specs (.aswritten/memories/2025-01-25-infra-specs.md).

## Conviction Levels
Every claim in the graph is assigned a conviction level, which dictates how much weight an agent should give that information:

*   **Notion:** A fleeting thought or early-stage idea. Low weight.
*   **Stake:** A preference or leaning. Significant, but not yet a formal decision.
*   **Boulder:** A firm decision or established fact. High weight.
*   **Grave:** A foundational principle or "hill to die on." Maximum weight.[^conviction-levels]

When citing claims, always include the conviction level to signal the strength of the grounding to the user.

[^conviction-levels]: Conviction levels were established in the Ontology Definition (.aswritten/memories/2024-11-20-ontology-v1.md) to solve the problem of "flat" knowledge where every sentence is treated with equal importance.

## Telltales
Telltales are the core quality control mechanism of the system. They are regenerated story drafts that reflect the current state of the worldview.[^telltale-def] When the worldview changes, the stories change.

Reviewers do not need to read raw SPARQL transactions; instead, they review the **diffs** in the stories (the telltales). If a change in the worldview causes a story to drift in an undesirable direction, the reviewer can reject the PR, preventing the "hallucination" or misalignment from entering the main branch.

[^telltale-def]: "Telltales are the 'canary in the coal mine' for worldview drift" (Product Design Session, .aswritten/memories/2025-02-10-telltales.md).

## Branches as Perspectives
In collective memory, branches represent more than just code isolation; they represent **perspectives**.[^branch-perspectives]
*   **Main:** The canonical, agreed-upon worldview.
*   **Topic Branches:** Proposed shifts, new research, or conflicting viewpoints (e.g., `research/new-market-entry` or `call/customer-feedback`).

The workflow—save, extract, regenerate, review, merge—is the digital equivalent of an organizational alignment process.

[^branch-perspectives]: The use of branches as perspectives is a "stake" conviction documented in the Workflow Guide (.aswritten/memories/2025-02-15-git-workflow.md).

## Compilation Targets
Artifacts like READMEs, API docs, and strategy memos are "renders" from the worldview, not manually maintained files.[^compilation-targets] This eliminates the "strategy-execution disconnect" where high-level goals and low-level implementation drift apart. When the worldview is updated, all compilation targets regenerate to reflect the new reality.

[^compilation-targets]: "Stop writing docs. Start updating the worldview. The docs will follow" (Internal Memo, .aswritten/memories/2025-01-05-no-more-manual-docs.md).

## The Feedback Loop
The most critical behavior for an agent is the **Introspection Loop**. Before responding to a user or performing a task, you must identify gaps in your knowledge.[^feedback-loop]

1.  **Identify Gaps:** What is missing from the snapshot to complete this task?
2.  **Ask:** Prompt the user for the missing information or ask who made the decision.
3.  **Save:** Record the answer as a new memory.
4.  **Recompile:** Wait for the extraction to update the worldview.

This loop prevents the agent from building on assumptions and ensures the collective memory grows more robust with every interaction.

[^feedback-loop]: The feedback loop is the "primary directive" for agents working in the system (Agent Behavior Spec, .aswritten/memories/2025-02-20-agent-loop.md).