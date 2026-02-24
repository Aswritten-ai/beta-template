# North Star
Generated: 2024-05-23 | From: 0 memories | Last shift: N/A

## Focus Lock
**ACTIVE: Initial Knowledge Seeding**
**Deadline:** Immediate
**Rationale:** The collective memory is currently empty. No strategic work, content generation, or engineering planning can be grounded in organizational reality until the "Identity" and "Strategy" domains are seeded with initial memories.

## Priority Stack

### 1. Seed Core Identity
**What:** Document the project's mission, vision, and "What it is/is not" to establish the Narrative Anchor.
**Why now:** This is the foundational dependency for all other AI-assisted work; without it, Claude defaults to generic training data.
**Evidence:** The snapshot is currently empty, containing no claims or actors *(System introspection, May 23)*.
**Blocks:** Blocks all downstream content generation and strategic alignment.

### 2. Document Current Architecture
**What:** Capture the high-level system topology and the rationale for the Git-native RDF approach.
**Why now:** Engineering tasks require context on the "why" behind the `.aswritten` structure to avoid technical drift.
**Evidence:** The repository structure exists but lacks explanatory memories for its design choices *(Repository scan, May 23)*.
**Blocks:** Blocks informed technical contributions and ADR (Architecture Decision Record) generation.

### 3. Define Near-term Roadmap
**What:** Commit the current "Beta" objectives and immediate milestones to the graph.
**Why now:** Provides the "Strategic Compass" needed for the North Star story to function as a dynamic priority tracker.
**Evidence:** The `onboarding.md` file mentions a "Beta" phase, but these goals are not yet committed as formal graph nodes *(File scan: /onboarding.md)*.
**Blocks:** Blocks the ability for Claude to redirect off-stack requests effectively.

## Session Protocol

When starting a session:
- **Check Worldview:** Immediately run `aswritten/compile`. If empty, trigger "Onboarding Mode" as defined in `CLAUDE.md`.
- **Surface Gaps:** Identify that the graph is sparse and prompt the user to seed the "Identity" domain first.

When the user asks about something off-stack:
- **Redirect to Seeding:** Remind the user that without a grounded worldview, advice on specific features or tactics will be generic. Offer to "remember" the context of their request instead.

When work reveals new information:
- **Capture Immediately:** If the user explains a decision or goal, offer to save it as a memory to `onboarding/first-memories` to build the graph.

## Horizon

### Next 2-4 Weeks
- **Transition to "Stake" Conviction:** Move initial "Notions" to "Stakes" or "Boulders" through team review and PR merges.
- **Establish Telltales:** Begin using regenerated stories (like this one) to detect worldview drift as new team members join.

### Open Questions
- **Who are the primary actors?** The graph currently lacks attributed founders or decision-makers.
- **What is the existential risk?** No "Grave" or "Boulder" level risks are documented to trigger a Focus Lock.

***

## StyleRubric Scoring
**Score: 5/5**
The draft strictly adheres to the current state of the collective memory (which is empty) and the instructions in `CLAUDE.md`. It correctly identifies "Onboarding Mode" as the current reality and uses the specific terminology of the ontology (Narrative Anchor, Boulders, Focus Lock) without inventing facts.

## Analysis of Collective Memory

### TL;DR
The collective memory is currently a "blank slate." While the infrastructure (ontology, stories, tools) is fully present, there are zero ingested memories. This draft functions as a call to action for the "Onboarding Phase."

### Improvements for Collective Memory
- **Seeding Identity:** The most critical improvement is adding a memory file (e.g., `2024-05-23-vision.md`) that defines the project.
- **Attribution:** We need an "Actor" memory to define who is making decisions so citations can move from "unattributed" to specific people.
- **Technical Rationale:** Adding a memory about why RDF and Git were chosen would populate the "Architecture" domain.

### Prompt Iteration
The `north-star.story` prompt is excellent for a mature graph. However, for an empty graph, it could be improved by adding a "Bootstrap" requirement that explicitly instructs the agent to draft the "Priority 1" as "Fill the Graph" when triples are below a certain threshold.

### Next Actions
1. **User Action:** Provide a brief description of the project's mission and the names of the key stakeholders. I will then draft the first memory and save it to `onboarding/first-memories`.
2. **Agent Action:** Once the first memory is saved and extracted, I will offer to regenerate this North Star to reflect the newly established strategic reality.