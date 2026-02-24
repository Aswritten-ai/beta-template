# Product Concepts: Collective Memory for AI

## What This Document Is
This guide explains the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) cover tool mechanics, this document explains *why* the system functions this way so you can make informed decisions during memory extraction and worldview synthesis.

## What Collective Memory Is
Collective memory is a git-native RDF knowledge graph that serves as an organization's single source of truth. Unlike traditional documentation, which focuses on static "how-to" artifacts, collective memory captures the **worldview**: the evolving set of perspectives, decisions, and rationales that drive an organization.[^mission]

By being git-native, the system inherits versioning, branching, and provenance. Every fact in the graph traces back to a specific transaction, which traces to a primary source memory (a call transcript, a Slack thread, or a document).[^git-native] This allows organizations to shift from producing manual artifacts to producing a structured worldview that can be rendered into any format.[^artifact-shift]

[^mission]: The core mission is to provide a "single source of truth" for organizations, as defined in the product overview (.aswritten/memories/2024-01-10-product-vision.md). This is a **boulder** conviction level, representing a foundational product pillar.
[^git-native]: Git-native architecture is a **grave** conviction decision by the founding team (Feb 12 Strategy Session). It ensures that "knowledge is as auditable as code," allowing for branching perspectives and clear provenance chains.
[^artifact-shift]: The shift from "producing artifacts to producing worldview" was established during the Q1 Product Sync (.aswritten/memories/2024-03-15-q1-sync.md). It positions the graph as the primary output, with docs and code as secondary renders.

## Narrative Architecture
The system treats knowledge as a **steering vector** for AI agents. Rather than just providing context, collective memory acts as a "program installed onto model hardware," directing how an agent perceives and reacts to information.[^steering-vector]

Multiple narratives (e.g., GTM strategy, engineering standards, product roadmap) compose into a single compiled worldview. This allows one unified graph to back multiple agent roles—a developer agent and a sales agent both draw from the same core truths but apply them to different tasks.[^composition]

[^steering-vector]: The "steering vector" thesis (March 2024 Research Note) suggests that narrative architecture provides directional meaning similar to how flocking algorithms guide complex systems. This is a **notion** currently being tested in beta.
[^composition]: Narrative composition is documented in the Architecture Overview (.aswritten/memories/2024-02-20-arch-spec.md). It explains how the `worldview:all` compilation target merges disparate domain expansions into a coherent graph.

## Memories
Memories are the primary input to the system. A "good" memory is a rich primary source—such as a raw transcript—rather than a sparse summary. The extraction pipeline benefits from "more material," as the LLM can identify nuances and contradictions that a human summarizer might miss.[^rich-memories]

Memories should be treated as **Pull Requests, not commits**. They represent coherent units of knowledge. It is vital to preserve original word choice and include direct quotes in the memory file to maintain high-fidelity provenance in the graph.[^memory-quality]

**The Extraction Pipeline:**
1. **Save**: A memory (.md) is committed to a branch.
2. **Extract**: GitHub Actions trigger an LLM to extract facts into SPARQL transactions (.sparql).
3. **Validate**: The system checks for graph consistency.
4. **Compile**: The transactions are merged into the snapshot. This is an async process taking 5–10 minutes.[^pipeline]

[^rich-memories]: The "more material is better" principle was established in the Extraction Guidelines (.aswritten/memories/2024-04-05-extraction-rules.md). It notes that sparse summaries lead to "hallucinated gaps" in the graph.
[^memory-quality]: The requirement for direct quotes and primary source preservation is a **boulder** conviction level from the April Engineering Offsite.
[^pipeline]: The 5-10 minute async delay is a technical constraint documented in the DevOps Handbook (.aswritten/memories/2024-05-12-infra-specs.md). Agents must wait for the `extract` action to complete before the new knowledge is queryable.

## Conviction Levels
Every claim in the graph carries a **Conviction Level**, which dictates how much weight you should give it during synthesis:[^conviction-levels]

*   **Notion**: A fleeting idea or early hypothesis. Low weight.
*   **Stake**: A proposed direction or preference. Moderate weight.
*   **Boulder**: A firm decision or core principle. High weight.
*   **Grave**: A foundational, non-negotiable truth. Absolute weight.

Conviction is orthogonal to review status; a "Notion" can be merged into the main branch, and a "Grave" decision can exist on a proposal branch.

[^conviction-levels]: Conviction levels are defined in the Core Ontology (ontology.ttl). They represent the "weight of intent" behind a statement, as first proposed in the Jan 2024 Design Doc.

## Telltales
Telltales are the primary quality control mechanism for the worldview. They are **regenerated story drafts** produced whenever the graph changes. When a user opens a PR to merge new memories, they don't review raw SPARQL; they review the "diff" in the stories.[^telltales] If a change to the graph causes a story to drift in an undesirable direction, the reviewer catches it there.

[^telltales]: Telltales as a "diff-based review mechanism" were introduced in the May Product Update (.aswritten/memories/2024-05-20-telltale-launch.md). This replaced manual graph auditing.

## Branches as Perspectives
In collective memory, branches represent **perspectives** or proposed shifts in the worldview. 
*   **Main**: The canonical, agreed-upon worldview.
*   **Topic Branches**: (e.g., `feature/`, `research/`, `call/`) These are "what if" scenarios or new information being integrated.[^branches]

The workflow follows a Propose → Debate → Align cycle. A branch is a proposal to change the organization's mind.

[^branches]: The "Branch as Perspective" model is a **stake** conviction level from the June Strategy Session (.aswritten/memories/2024-06-10-git-workflow.md).

## Compilation Targets
Artifacts like READMEs, API docs, and strategy decks are **renders from the worldview**. They are not manually edited. When the worldview changes (via a merged memory), these compilation targets automatically regenerate. This eliminates the "strategy-execution disconnect" where documentation lags behind actual decisions.[^compilation]

[^compilation]: The concept of "Artifacts as Renders" is documented in the Build System Spec (.aswritten/memories/2024-02-28-build-logic.md). It ensures that execution always matches the latest strategy.

## The Feedback Loop
Your most important role is maintaining the **Introspection Loop**. Before responding to a user or performing a task, you must identify gaps in your knowledge.[^feedback-loop]

1.  **Identify Gaps**: Check if the snapshot has sufficient conviction on the topic.
2.  **Ask**: If knowledge is missing or sparse, ask the user who made the decision or where the info lives.
3.  **Save**: Capture the answer as a new memory.
4.  **Recompile**: Wait for the extraction to update the worldview.

This prevents you from building on assumptions and ensures the collective memory grows with every interaction.

[^feedback-loop]: The Feedback Loop is the core agentic behavior defined in the Agent Persona Guidelines (.aswritten/memories/2024-07-01-agent-behavior.md). It is a **grave** conviction that agents must never "guess" when the graph is silent.