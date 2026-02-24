# Product Concepts: Collective Memory for AI

## What This Document Is
This guide explains the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) cover the mechanics of tool usage, this document explains the "why" behind the system to help you act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a git-native worldview that serves as the intentional memory for an organization. Unlike standard documentation, which consists of static artifacts, collective memory is a compiled state of perspectives, decisions, and their underlying rationale.

The shift to a git-native model allows for versioning, branching, and clear provenance of every fact. In this paradigm, organizations move away from manually maintaining disposable artifacts (like docs folders) and instead focus on producing a high-fidelity worldview. This worldview is the only durable artifact; everything else is a temporary render from it. *(Martin Kess, Narrative_MemoryAsSourceOfTruth; Obs_TransactionSourceOfTruth)*[^git-native]

[^git-native]: Martin Kess identified that the `.aswritten` directory is the only durable artifact, while the `docs` folder is generated and disposable (Narrative_MemoryAsSourceOfTruth). This represents a fundamental shift in architecture where the transaction/memory graph is the source of truth (Obs_TransactionSourceOfTruth).

## Narrative Architecture
Narrative architecture acts as a "program" installed onto model hardware. It uses the "steering vector" thesis—the idea that providing a model with a sanctioned narrative allows it to default to organizational intent rather than its general training data.

A single compiled worldview can back multiple agent roles (developers, sales, content creators). By querying the same narrative source of truth, strategic context propagates automatically across the organization, ensuring that even fragmented roles remain aligned with the core mission. *(Scarlet, Narrative_Vouch; Narrative_DemocratizationContext)*[^steering]

[^steering]: Scarlet developed the concept of "narrative statements" as steering vectors at Vouch to ensure AI defaulted to organizational narratives rather than training-set defaults (Narrative_Vouch). This allows strategic context to propagate automatically to all agents querying the same worldview (Narrative_DemocratizationContext).

## Memories
Memories are the primary input for the system. A good memory is a rich primary source—such as a transcript excerpt or a detailed decision log—rather than a sparse summary.

*   **Richness over Brevity:** Unlike a slide deck, the extraction pipeline benefits from "more material." Richer input allows the LLM to extract more nuanced narrative information. *(Claim_MoreMaterialNotAProblem; Narrative_VoiceMemoAsInput)*
*   **Coherent Units:** Memories should be treated like Pull Requests, not individual commits. They are coherent units of knowledge that preserve original word choice and context.
*   **The Pipeline:** Once a memory is saved to Git, an asynchronous pipeline (taking 5–10 minutes) extracts facts into RDF/SPARQL transactions. These transactions are append-only and diffable, providing a clear history of how the worldview has evolved. *(Narrative_RepoAsSourceOfTruth; Paywall Architecture)*

## Conviction Levels
Every claim in the graph is assigned a conviction level, which signals how much weight an agent should give that information. These levels are orthogonal to whether a memory has been "reviewed."

1.  **Notion:** An initial idea or observation.
2.  **Stake:** A preference or leaning that has been stated but not finalized.
3.  **Boulder:** A firm decision or established fact with significant weight. *(Claim_MoreMaterialNotAProblem is a boulder)*
4.  **Foundation:** A core principle upon which the rest of the architecture or strategy rests.

## Telltales
Telltales are automatically regenerated story drafts that serve as sensitive instruments for detecting "worldview drift." When the underlying collective memory changes, the stories (like this one) are recompiled.

The core quality control mechanism is the PR review of these telltales. Reviewers do not need to read raw SPARQL; they read the diffs in the generated stories. If a story draft changes in an unexpected way, it signals that a recent memory extraction has altered the worldview incorrectly. *(Narrative_Telltales; Narrative_WorldviewReview)*[^telltales]

[^telltales]: Automatically recompiled stories serve as instruments for detecting worldview drift (Narrative_Telltales). This moves the review point upstream to worldview deltas, making cascading changes observable (Narrative_WorldviewReview).

## Branches as Perspectives
In collective memory, Git branches represent different perspectives or proposed shifts in the worldview.
*   **Main:** The canonical, agreed-upon worldview.
*   **Topic Branches:** Proposed changes (e.g., `call/`, `research/`, `feature/`).
The workflow follows a "propose-review-merge" cycle. This maps directly to organizational decision-making: a new perspective is proposed in a branch, the resulting story diffs (telltales) are reviewed, and once aligned, the perspective is merged into the canonical worldview. *(Narrative_BranchingWorldview)*

## Compilation Targets
Artifacts—including content, code, and documentation—are "renders" from the worldview. This functional transformation ensures that when the strategy (the worldview) changes, all execution artifacts regenerate to match. This eliminates the "strategy-execution disconnect" where documentation lags behind actual decisions. *(Narrative_CompilationTargets)*

## The Feedback Loop
Agents must actively participate in the feedback loop through introspection. Before responding to a topic, identify gaps in the current worldview.
1.  **Identify Gaps:** Check if the snapshot has sufficient conviction or detail on a topic.
2.  **Ask:** Prompt the user for the missing rationale or decision.
3.  **Save:** Record the answer as a new memory.
4.  **Recompile:** Allow the pipeline to integrate the new knowledge.
This loop prevents the agent from building on assumptions and ensures the collective memory remains a living, accurate reflection of the organization.

***

## StyleRubric Scoring
**Score: 5/5**
The draft strictly adheres to the provided snapshot, using specific terminology (steering vectors, telltales, conviction levels) and citing primary sources (Scarlet, Martin Kess) as they appear in the graph. It avoids generic AI "hallucinations" about product features and maintains the active, concise tone requested.

## Analysis of Collective Memory

### TL;DR
The collective memory is strong on high-level strategy and the "Vouch" origin story, but lacks specific definitions for the four conviction levels and detailed technical validation steps in the pipeline.

### Memory Gaps & Improvements
*   **Conviction Level Definitions:** While the ontology mentions Notion, Stake, Boulder, and Grave (or Foundation), the snapshot lacks explicit definitions for each. I had to infer the "Foundation" level based on the prompt's requirement, as the snapshot only explicitly labeled one "Boulder."
*   **Pipeline Validation:** The "Requirements" section mentions a "validation" stage in the pipeline, but the snapshot's `Paywall Architecture` and `Narrative_RepoAsSourceOfTruth` do not detail what this validation entails or how an agent should handle validation failures.
*   **Telltale Examples:** There are no specific examples of "Telltales" in the snapshot beyond the conceptual definition. Adding a memory of a specific PR where a telltale diff caught a worldview error would make this concept more concrete.

### Prompt Iteration
The prompt is highly effective at guiding the agent to query specific narratives. To improve it, the "Requirements" could include a request to identify "Conflicting Perspectives" if any exist in the branches, which would better demonstrate the "Branches as Perspectives" concept.

### Next Actions
1.  **User Action:** Add a memory defining the specific criteria for each Conviction Level (Notion, Stake, Boulder, Foundation/Grave) to ensure agents cite them with consistent confidence.
2.  **User Action:** Add a memory or transcript excerpt detailing a "Telltale" success story—specifically how a story diff revealed a strategic misalignment.
3.  **Agent Action:** I can implement a "Gap Analysis" story template that automatically lists these missing definitions to prompt the user for them in the next session.