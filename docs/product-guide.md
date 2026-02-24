# Product Concepts: Collective Memory for AI

## What This Document Is
This guide defines the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) explain tool mechanics, this document explains the conceptual framework required to act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a git-native RDF knowledge graph that serves as an organization's single source of truth. It is distinct from traditional documentation; while docs are static artifacts, collective memory is a living "worldview" composed of perspectives, decisions, and their underlying rationale.[^product-def]

By being git-native, the system inherits versioning, branching, and provenance. Organizations shift from producing isolated artifacts to producing a unified worldview where every claim traces back to a primary source memory. This ensures that AI agents and humans operate from the same context, eliminating the "strategy-execution disconnect" where implementation drifts from original intent.[^git-native]

[^product-def]: Collective memory is defined as a "Git-native RDF knowledge graph" that captures organizational worldview, as established in the core product ontology and the `aswritten` mission statement (aswritten/memories/2024-01-10-mission.md). It moves beyond documentation by focusing on the "why" behind decisions, not just the "what."
[^git-native]: The rationale for a git-native approach is to provide "full provenance and diffable truth," allowing the graph to evolve through standard collaboration workflows (aswritten/memories/2024-02-15-architecture-rationale.md). This is a "grave" conviction level, as it is the foundational technical constraint of the system.

## Narrative Architecture
The system treats narrative architecture as a "program installed onto model hardware." Instead of relying on a model's generic training data, collective memory provides a "steering vector" that aligns agent behavior with specific organizational meaning.[^steering-vector]

Multiple narratives—such as GTM strategy, engineering principles, or product roadmaps—compose into a single compiled worldview. This allows one unified graph to back multiple agent roles (e.g., a dev agent and a sales agent), ensuring they remain aligned even as they perform different tasks.[^composition]

[^steering-vector]: The "steering vector" thesis posits that narrative architecture provides directional meaning to LLMs, similar to how flocking algorithms guide individual entities (aswritten/memories/2024-03-05-narrative-theory.md). This is a "boulder" conviction, representing a core design principle.
[^composition]: Narrative composition allows "one worldview to back many roles," ensuring that a developer and a salesperson are working from the same foundational truths (aswritten/memories/2024-03-20-multi-agent-alignment.md).

## Memories
Memories are the primary units of knowledge. A "good" memory is a rich primary source—such as a meeting transcript or a detailed decision log—rather than a sparse summary. The system operates on the principle that "more material is not a problem," as the extraction pipeline benefits from the nuance and word choice found in original context.[^memory-quality]

Memories are treated like Pull Requests (PRs), not individual commits. They should represent coherent units of knowledge. Preserving direct quotes and specific phrasing is critical for maintaining the "texture" of the original decision.[^primary-source]

### The Extraction Pipeline
1.  **Memory Saved**: A `.md` file is added to the repo.
2.  **GitHub Actions**: Trigger an LLM-based extraction process.
3.  **SPARQL Transactions**: The LLM generates `.sparql` files representing the delta.
4.  **Validation**: The transactions are validated against the ontology and compiled into the snapshot.

This is an asynchronous process; it typically takes 5–10 minutes for a saved memory to be queryable in the snapshot.[^pipeline]

[^memory-quality]: The "more material is better" claim is a direct design decision to favor raw transcripts over human-written summaries, as LLMs extract more accurate RDF from richer context (aswritten/memories/2024-04-10-extraction-strategy.md).
[^primary-source]: Preserving "word choice and transcript excerpts" is a requirement for high-confidence claims, as documented in the memory contribution guidelines (aswritten/memories/2024-04-12-contribution-guide.md).
[^pipeline]: The extraction pipeline is an "append-only model with diffable SPARQL," ensuring that every change to the graph is auditable (aswritten/memories/2024-05-01-pipeline-spec.md).

## Conviction Levels
Every claim in the graph is assigned a conviction level, which dictates how much weight an agent should give it. These levels are orthogonal to whether a fact has been "reviewed."

*   **Notion**: A fleeting thought or early-stage idea. Low weight.
*   **Stake**: A proposed direction or a preference that hasn't been finalized.
*   **Boulder**: A firm decision or core principle that guides other actions.
*   **Grave**: A foundational truth or non-negotiable constraint. High weight.[^conviction]

When citing claims, always include the conviction level to signal the strength of the grounding.[^citation-rules]

[^conviction]: Conviction levels (Notion, Stake, Boulder, Grave) are defined in the core ontology (`narr:Conviction`) to provide a "weight of truth" for every node in the graph (aswritten/ontology/core.ttl).
[^citation-rules]: The requirement to cite conviction levels is a "boulder" conviction established in the AI Agent Interaction Protocol (aswritten/memories/2024-05-15-agent-protocol.md).

## Telltales
Telltales are the core quality control mechanism of collective memory. They are regenerated story drafts that reflect the current state of the worldview. When the worldview changes, the telltales change.[^telltales-def]

Human reviewers do not read raw SPARQL transactions; they read the **diffs** in the telltales. If a memory extraction causes a telltale to drift in an undesirable direction, the reviewer rejects the PR. This ensures that the graph's "output" remains aligned with human intent.[^review-mech]

[^telltales-def]: Telltales are defined as "regenerated story drafts" that serve as the human-readable interface for graph changes (aswritten/memories/2024-06-01-telltale-concept.md).
[^review-mech]: The review mechanism relies on "reading story diffs, not raw SPARQL," making the impact of a knowledge change immediately visible (aswritten/memories/2024-06-05-review-workflow.md).

## Branches as Perspectives
In collective memory, git branches represent different **perspectives** or proposed shifts in the worldview.
*   **Main**: The canonical, agreed-upon worldview.
*   **Topic Branches**: Proposed changes (e.g., `call/`, `research/`, `feature/`).

The workflow follows a "propose-review-merge" cycle. A branch allows an agent or human to explore a new narrative without corrupting the canonical truth until it is validated and merged.[^branching]

[^branching]: Branching conventions (e.g., `call/` for meeting notes) are used to isolate "proposed shifts in worldview" from the canonical main branch (aswritten/memories/2024-06-15-branching-strategy.md).

## Compilation Targets
Artifacts like code, documentation, and marketing copy are "renders" from the worldview. They are not manually maintained. When the underlying worldview changes (via a merged memory), these compilation targets regenerate automatically. This ensures that execution always matches strategy.[^compilation]

[^compilation]: Compilation targets are "renders from worldview," ensuring that "strategy and execution are mathematically linked" (aswritten/memories/2024-07-01-compilation-targets.md).

## The Feedback Loop
The most important behavior for an agent is the **Introspection Loop**. Before responding to a user or performing a task, you must identify gaps in your knowledge.

1.  **Identify Gaps**: Determine what information is missing to complete the task with high confidence.
2.  **Ask**: Query the user: "Who decided this?" or "Where is the source for this?"
3.  **Save**: Capture the answer as a new memory.
4.  **Recompile**: Wait for the extraction pipeline to update the worldview.

This loop prevents the agent from building on assumptions and ensures the collective memory grows more robust over time.[^feedback-loop]

[^feedback-loop]: The feedback loop (Introspect → Gaps → Ask → Save → Recompile) is the "primary directive" for agents to avoid "hallucinating organizational intent" (aswritten/memories/2024-07-10-feedback-loop.md).