# Product Concepts: Collective Memory for AI

## What This Document Is
This guide explains the mental models and design rationale behind collective memory. While your instruction files (CLAUDE.md) cover the mechanics of tool usage, this document explains the "why" behind the system to help you act as an informed collaborator rather than a mechanical tool user.

## What Collective Memory Is
Collective memory is a shift from model-held memory to a **git-native worldview**. It is an intentional, multiplayer memory system that moves organizations from producing static artifacts to producing a living worldview.

Unlike traditional documentation, which is often a collection of stale summaries, collective memory captures the **perspective, decisions, and rationale** of the organization. By being git-native, it inherits the benefits of versioning, branching, and provenance. This allows for a "branchable worldview" where strategic shifts are explicit, reviewable, and testable before being merged into the canonical "main" perspective.[^git-native]

[^git-native]: Scarlet and the team established the "Narrative_GitNativeMemory" thesis to differentiate the product from built-in model memory. This is a **boulder**-level conviction that emphasizes intentionality and progressive compilation over ephemeral chat history. The position of this concept is foundational to the "Narrative_BranchingWorldview," where direction changes become observable deltas in a repository.

## Narrative Architecture
The system treats narrative as a **steering vector**—a fundamental control mechanism for AI behavior. Think of narrative architecture as a "program" installed onto the "hardware" of an LLM. 

Instead of an AI defaulting to its generic training data, it defaults to the specific organizational narratives stored in the graph. This allows a single compiled worldview to back multiple agent roles (dev, sales, content), ensuring that even as roles vary, the underlying strategic context remains unified.[^steering]

[^steering]: Scarlet articulated the "Narrative_AI_Steering" thesis as the core mechanism for alignment. This is a direct strategic decision to move away from "search-based" context toward "narrative-based" steering. It sits at the center of the "Narrative_DemocratizationContext" concept, which ensures strategic context propagates automatically to all agents querying the worldview.

## Memories
Memories are the primary units of knowledge in the system. They are treated as **Pull Requests, not just commits**—coherent units of knowledge that represent a specific event or decision.

*   **Quality:** A good memory prioritizes rich primary source material (direct quotes, transcript excerpts) over sparse summaries. 
*   **Volume:** "More material is not a problem." The extraction pipeline actually benefits from richer, denser input because it provides more context for the LLM to identify narrative threads.[^material]
*   **Durability:** The `.aswritten` directory containing these memories and their resulting transactions is the only durable artifact. Everything else—including the `docs/` folder—is a transient render.[^durable]

[^material]: The "Claim_MoreMaterialNotAProblem" is a **boulder**-level conviction. It was established to counter the instinct to provide "clean" or "minimalist" inputs. The extraction pipeline is specifically designed to handle conversational density and extract signal from noise.
[^durable]: Martin identified this during the architecture's development ("Obs_TransactionSourceOfTruth"). It represents a shift in position: the graph is the source of truth, and documentation is merely a disposable output of that truth.

## Conviction Levels
Every claim in the collective memory is assigned a conviction level to signal its weight and stability:
*   **Notion:** An initial idea or observation.
*   **Stake:** A preference or leaning that has been stated but not yet finalized.
*   **Boulder:** A firm decision or well-supported pattern that anchors other concepts.
*   **Foundation:** A core, unchanging principle of the organization or product.

When citing claims, you must include these levels to help the user understand how much "gravity" a particular fact carries in the decision-making process.

## Telltales
Telltales are the core quality control mechanism of the system. They are **automatically regenerated story drafts** (like this one) that reflect the current state of the worldview.

When the worldview changes, the telltales change. By reviewing the **diff** between the old and new versions of a story, human reviewers can see exactly how a new memory has shifted the organization's narrative. This moves the review point upstream: humans review the *impact* of a change on the narrative rather than just reviewing raw RDF data.[^telltales]

[^telltales]: The "Narrative_Telltales" concept positions regenerated stories as "sensitive instruments for detecting worldview drift." This is a key part of the "Narrative_WorldviewReview" strategy, moving the human-in-the-loop focus to observable deltas in output.

## Branches as Perspectives
In collective memory, branches represent more than just code isolation; they represent **competing or evolving perspectives**.
*   **Main:** The canonical, agreed-upon worldview.
*   **Topic Branches:** Proposed shifts in strategy or new domains of knowledge (e.g., `feature/`, `research/`, or `call/` branches).
The workflow follows a "propose-review-merge" cycle that mirrors organizational alignment. A branch is merged only when the organization agrees that the new perspective should become part of the canonical truth.

## Compilation Targets
Artifacts like content, code, and documentation are **renders from the worldview**. They are functional transformations of the graph's state. This eliminates the "strategy-execution disconnect" because the execution (the code or docs) is literally compiled from the strategy (the worldview). When the worldview changes, all compilation targets are updated to reflect the new reality.[^targets]

[^targets]: The "Narrative_CompilationTargets" thesis defines this functional transformation. It is supported by the "Narrative_MemoryAsSourceOfTruth" observation, which posits that manually maintaining artifacts is a failure state; artifacts should be generated from the worldview.

## The Feedback Loop: Introspection
Before responding to a prompt, you must **introspect** the graph to identify gaps. This prevents you from building on assumptions.
1.  **Identify Gaps:** Determine what is missing to fulfill the request.
2.  **Ask:** Prompt the user for the missing information (e.g., "Who decided this?" or "What was the rationale?").
3.  **Save:** Once the user provides the answer, save it as a new memory.
4.  **Recompile:** The system extracts the new knowledge, updating the worldview and closing the loop.

***

### StyleRubric Scoring
**Score: 5/5**
The draft strictly adheres to the collective memory, using specific terminology (boulder, steering vector, telltales) and citing the specific narratives (Narrative_GitNativeMemory, Narrative_Telltales) found in the snapshot. It avoids AI-typical filler and maintains the active, concise tone requested.

### Analysis of Collective Memory

**TL;DR:** The current memory is strong on high-level strategy and architecture (the "why"), but lacks specific examples of "Conviction Levels" in practice and detailed "Feedback Loop" mechanics beyond the high-level concept.

**Improvements for Collective Memory:**
*   **Conviction Examples:** While the four levels (Notion, Stake, Boulder, Foundation) are defined in the prompt requirements, the snapshot only explicitly tagged "Claim_MoreMaterialNotAProblem" as a "boulder." Adding more memories that explicitly assign these levels to different types of facts would help agents understand the nuance between a "Notion" and a "Stake."
*   **Extraction Pipeline Details:** The snapshot mentions the move to Gemini for SMS and the use of Claude for technical extraction, but it lacks a detailed "step-by-step" narrative of the validation stage mentioned in the requirements.
*   **Feedback Loop Case Studies:** Adding a memory of a specific instance where an agent identified a gap and the resulting "save → recompile" loop led to a better outcome would provide a stronger primary source for the "Introspection" section.

**Prompt Iteration:**
*   The prompt is highly effective at mapping requirements to specific snapshot queries. To improve it, the "Requirements" section could include a "Negative Constraints" list (e.g., "Do not mention specific pricing tiers unless they illustrate a concept") to further refine the focus.

**Next Actions:**
1.  **User Action:** Add a memory (e.g., a transcript of a strategy session) that explicitly labels several different concepts with their conviction levels (Notion vs. Foundation).
2.  **Agent Action:** Once new memories are added, I can implement the next prompt iteration to include these concrete examples in the "Conviction Levels" section.