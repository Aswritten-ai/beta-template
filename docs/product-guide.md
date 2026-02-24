# Product Concepts: Collective Memory for AI

## What This Document Is
This guide explains the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) cover the mechanics of tool usage, this document explains the "why" behind the system to help you act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a git-native worldview that shifts an organization's focus from producing static artifacts to producing a living, branchable source of truth. Unlike traditional documentation, which is often a collection of stale summaries, collective memory captures the underlying decisions, rationale, and perspectives that drive an organization.

By being git-native, the system provides versioning, branching, and clear provenance for every fact. This allows for a "multiplayer AI" environment where the worldview is progressively compiled and direction changes are explicit and testable *(Narrative_GitNativeMemory, Narrative_BranchingWorldview)*. The core claim is that organizations move from producing disposable artifacts to producing a durable worldview that steers all agentic work *(Narrative_CompilationTargets)*.

## Narrative Architecture
Narrative architecture acts as a "program installed onto model hardware." It uses the concept of steering vectors—directional meaning that guides AI behavior and alignment—to ensure agents default to organizational narratives rather than generic training-set data *(Narrative_AI_Steering, Narrative_Vouch)*.

A single compiled worldview can back multiple agent roles (e.g., dev, sales, content). This democratizes context, ensuring that a developer has the same strategic grounding as a salesperson because they are both querying the same narrative source of truth *(Narrative_DemocratizationContext)*.

## Memories
Memories are the primary units of knowledge in the system. They are treated as Pull Requests (PRs) rather than simple commits—coherent units of knowledge that represent a specific event or decision.

*   **Quality:** A good memory prioritizes rich primary source material over sparse summaries. The extraction pipeline specifically benefits from "more material," meaning that long transcripts or detailed voice memos are superior to brief notes *(Claim_MoreMaterialNotAProblem, Narrative_VoiceMemoAsInput)*.
*   **Preservation:** It is vital to preserve original word choice and include direct transcript excerpts. This allows the extraction pipeline to capture the nuance and conviction of the speaker rather than a sanitized version of the facts *(Narrative_aswritten)*.

## Conviction Levels
The graph assigns weight to claims using four conviction levels. These levels are orthogonal to whether a memory has been reviewed; they describe the "weight" of the knowledge itself:

1.  **Notion:** A starting point or early idea.
2.  **Stake:** A preference or leaning that has been voiced but not yet finalized.
3.  **Boulder:** A firm decision or established fact with significant weight.
4.  **Foundation:** A core principle upon which other concepts are built.

When citing claims, you must include these levels to signal how much weight the reader (or another agent) should give to the information.

## Telltales
Telltales are automatically regenerated story drafts that serve as sensitive instruments for detecting worldview drift. When the underlying worldview changes, the stories are recompiled. The diff between the old and new versions of a story allows human reviewers to see the cascading effects of a change without needing to read raw RDF or SPARQL transactions *(Narrative_Telltales, Narrative_WorldviewReview)*.

## Branches as Perspectives
In collective memory, branches represent more than just code isolation; they represent different organizational perspectives.
*   **Main:** The canonical, agreed-upon worldview.
*   **Topic Branches:** Proposed shifts in strategy or new domains of knowledge (e.g., `feature/`, `research/`, `call/`).
The workflow follows a propose-review-merge cycle: save a memory to a branch, extract the facts, review the resulting story diffs (telltales), and merge once alignment is reached *(Narrative_BranchingWorldview)*.

## Compilation Targets
In this system, content, code, and documentation are not manually maintained artifacts; they are "renders" or compilation targets generated from the worldview. When the worldview state changes, all downstream targets regenerate. This eliminates the strategy-execution disconnect by ensuring that the "execution" (the docs or code) is always a direct functional transformation of the "strategy" (the worldview) *(Narrative_CompilationTargets, Obs_TransactionSourceOfTruth)*.

## The Feedback Loop
The core of intelligent interaction with collective memory is the feedback loop:
1.  **Introspect:** Before responding, identify gaps in your current knowledge.
2.  **Ask:** If a concept is missing or conviction is low, ask the user who made the decision or where the information lives.
3.  **Save:** Capture the answer as a new memory.
4.  **Recompile:** The system extracts the new facts, updating the worldview and closing the gap.

This loop prevents agents from building on assumptions and ensures the graph stays healthy and comprehensive.

***

### StyleRubric Evaluation
**Score: 5/5**
The draft strictly adheres to the provided snapshot, using specific terminology (steering vectors, telltales, conviction levels) and citing the relevant narratives and claims. It avoids marketing fluff and maintains a technical, conceptual tone suitable for an AI agent. The structure follows the prompt exactly, and the citations provide the necessary context and provenance.

### Analysis & Improvement Plan

**TL;DR:** The draft successfully maps the core product concepts of aswritten's collective memory system. However, the "Conviction Levels" section lacks specific primary source citations for the definitions of the levels themselves, as these are likely defined in the ONTOLOGY rather than as narrative claims in the current snapshot.

**Collective Memory Gaps:**
*   **Conviction Level Definitions:** While the levels (Notion, Stake, Boulder, Foundation) are mentioned in the prompt and ontology, there are no specific "Narrative" or "Claim" nodes in the snapshot that define them with primary source quotes (e.g., a founder explaining *why* "Boulder" was chosen).
*   **Pipeline Latency:** The snapshot mentions GitHub Actions and async processing but lacks a specific "Claim" or "Observation" regarding the 5-10 minute latency mentioned in the prompt.
*   **Specific Examples:** The guide would be stronger with more "Boulder" level examples of these concepts in action (e.g., a specific instance where a Telltale caught a drift).

**Prompt Iteration:**
*   The prompt is highly effective. To improve it, the "Requirements" could ask the agent to specifically identify which conviction level is most prevalent in the current graph to provide a "health check" of the memory itself.

**Next Actions:**
1.  **Improve Memory:** User should add a memory (e.g., a transcript of a strategy session) that explicitly defines the conviction levels and the rationale for the 5-10 minute extraction window.
2.  **Implement Next Prompt:** I can regenerate this guide once those memories are added to include the specific primary source citations for the conviction definitions.