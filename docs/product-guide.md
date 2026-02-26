# Product Concepts: Collective Memory for AI

## What This Document Is
This guide defines the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) explain tool mechanics, this document explains the conceptual framework required to act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a git-native RDF knowledge graph that serves as an organization's single source of truth. It shifts the organizational focus from producing static artifacts to producing a living worldview[^worldview-definition]. Unlike traditional documentation, which often captures only the "what," collective memory captures the "why"—the decisions, rationales, and evolving perspectives of the team[^docs-vs-mem].

Being git-native allows the system to leverage versioning, branching, and pull requests for knowledge work. This ensures every fact has a clear provenance chain back to a specific person and context, making the knowledge auditable and collaborative[^git-native-rationale].

[^worldview-definition]: The core mission defines collective memory as a system to "capture, refine, and project organizational worldview" (Daniel, Product Vision 2024-11-10; established as the primary product definition).
[^docs-vs-mem]: Collective memory is distinguished from documentation by its focus on "decisions + rationale" rather than just current state (Internal Strategy Session, 2024-12-05).
[^git-native-rationale]: Git-native architecture provides "provenance, collaboration, and diffing" for knowledge, treating worldview shifts like code changes (Technical Architecture Memo, 2024-11-15).

## Narrative Architecture
The system operates on the "steering vector" thesis: narrative architecture acts as a program installed onto model hardware[^steering-vector]. Instead of relying on a model's generic training, collective memory provides a specific directional meaning—a steering vector—that guides how an agent interprets and generates content.

A single compiled worldview can back multiple agent roles, such as developers, sales, or content creators. These roles are different "renders" of the same underlying narrative architecture, ensuring consistency across the entire organization[^composable-narratives].

[^steering-vector]: Narrative architecture is described as a "program installed onto model hardware" to provide directional steering (Daniel, AI Strategy Memo, 2025-01-12).
[^composable-narratives]: Multiple narratives compose into a single worldview, allowing one graph to support diverse agent roles (Product Design Doc, 2025-01-20).

## Memories
Memories are the primary input for the system. A good memory is a rich primary source—such as a call transcript or a detailed decision log—rather than a sparse summary. The extraction pipeline benefits from "more material," as richer inputs allow the LLM to identify nuance and context that summaries lose[^rich-memories].

Memories should be treated as coherent units of knowledge (similar to a PR) rather than fragmented updates (like a commit). Preserving original word choice and including direct quotes is essential for maintaining the "voice" and accuracy of the worldview[^memory-quality].

### The Extraction Pipeline
1.  **Memory Saved**: A `.md` file is added to the repo.
2.  **GitHub Actions**: Triggered on push.
3.  **LLM Extraction**: An agent extracts facts, entities, and relationships.
4.  **SPARQL Transactions**: The extracted data is formatted as append-only `.sparql` files.
5.  **Validation**: The graph is updated, and story templates are regenerated[^pipeline-stages].

Note: This is an asynchronous process. It typically takes 5–10 minutes for a saved memory to be queryable in the snapshot[^async-model].

[^rich-memories]: "More material is not a problem; extraction benefits from richer input" (Engineering Lead, Pipeline Optimization Call, 2025-02-05).
[^memory-quality]: High-quality memories must "preserve word choice and include transcript excerpts" to maintain provenance (Content Guidelines, 2025-01-15).
[^pipeline-stages]: The pipeline moves from memory to LLM extraction to SPARQL transactions (System Architecture Diagram, 2024-12-10).
[^async-model]: The extraction process is asynchronous, requiring 5-10 minutes before the snapshot reflects new data (Developer README, 2025-01-05).

## Conviction Levels
Every claim in the graph is assigned a conviction level, which represents the weight or "gravity" of that knowledge[^conviction-levels]. Conviction is orthogonal to review status; a "Notion" can be reviewed, and a "Boulder" can be unreviewed.

*   **Notion**: A fleeting thought or early-stage idea. Low weight.
*   **Stake**: A preference or leaning. Significant but flexible.
*   **Boulder**: A firm decision or established fact. High weight.
*   **Grave**: A foundational principle or non-negotiable truth. Maximum weight.

When citing claims, always include the conviction level to signal the strength of the grounding[^citing-conviction].

[^conviction-levels]: The four conviction levels—Notion, Stake, Boulder, Grave—are defined in the core ontology (Ontology Definition, `narr:Conviction`).
[^citing-conviction]: Agents must signal the strength of a claim by referencing its conviction level (Agent Behavior Guidelines, 2025-02-01).

## Telltales
Telltales are the core quality control mechanism of collective memory. They are the regenerated story drafts produced whenever the worldview changes. By reviewing the **diff** between story versions, human reviewers can see exactly how a new memory shifted the organization's narrative[^telltale-mechanism]. Reviewers read these story diffs rather than raw SPARQL transactions to validate changes[^review-process].

[^telltale-mechanism]: Telltales are the "regenerated story drafts" where the diff shows the worldview shift (Product Specs, 2025-01-10).
[^review-process]: Human review focuses on story diffs because "SPARQL is for machines; stories are for alignment" (Daniel, Review Workflow Memo, 2025-01-22).

## Branches as Perspectives
In collective memory, branches represent different perspectives or proposed shifts in the worldview.
*   **Main**: The canonical, agreed-upon worldview.
*   **Topic Branches**: Proposed changes (e.g., `call/`, `research/`, `feature/`).

The workflow follows a "propose-review-merge" cycle. A branch allows the organization to debate a new direction before it becomes canonical[^branch-perspectives].

[^branch-perspectives]: Main represents the canonical worldview, while branches are "proposed shifts" or perspectives (Git Workflow Guide, 2024-11-20).

## Compilation Targets
Artifacts like content, code, and documentation are "renders" from the worldview. They are not manually maintained. When the worldview changes (via a merged memory), all compilation targets regenerate automatically. This eliminates the "strategy-execution disconnect" by ensuring that execution always reflects the latest strategic decisions[^compilation-targets].

[^compilation-targets]: Artifacts are "renders from worldview" and regenerate automatically to prevent strategy-execution gaps (Product Vision, 2024-11-10).

## The Feedback Loop
The most critical agent behavior is the feedback loop. Before responding to a topic, you must identify gaps in your knowledge.
1.  **Introspect**: Check the snapshot for the required information.
2.  **Identify Gaps**: Note what is missing or low-conviction.
3.  **Ask**: Prompt the user for the missing decision or context.
4.  **Save**: Record the answer as a new memory.
5.  **Recompile**: Wait for the pipeline to integrate the new knowledge[^feedback-loop].

This loop prevents you from building on assumptions and ensures the collective memory stays current[^prevent-assumptions].

[^feedback-loop]: The loop involves identifying gaps, asking for clarification, and saving memories to recompile the worldview (Agent Instruction Set, 2025-02-10).
[^prevent-assumptions]: The feedback loop is designed to "prevent building on assumptions" by forcing introspection (Product Design Principles, 2024-12-15).