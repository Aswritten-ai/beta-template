### State
The collective memory is currently in a foundational state, primarily defined by its **Narrative Architecture Ontology**. This ontology serves as the operating system for story-led strategy, organizing knowledge into eight core domains: Opportunity, Strategy, Product, Architecture, Organization, Proof, Templates, and Calibration. The graph is structured to support high-conviction decision-making, utilizing a "Conviction" scale—ranging from exploratory **Notions** to permanent **Foundations**—to govern the settledness of claims. While the structural framework is robust, the current snapshot is primarily composed of this schema rather than specific instance data or historical transactions.

### Stories
The following sections outline the intent and approach for the primary narrative arcs within the collective memory:

*   **The Architecture of Conviction**: This story explores how the system transforms raw observations into settled strategy. It focuses on the transition of knowledge through the conviction levels (Notion → Stake → Boulder → Foundation) and how these levels dictate the cost and complexity of change within the organization.
*   **Narrative-Led Product Development**: This arc details the "Product Ladder," where atomic **Primitives** are sequenced into **Behaviors** and **Flows** that deliver on a specific business narrative. It illustrates how product features are not just functional units but chapters in a larger value story.
*   **Strategic Calibration**: This section focuses on the "Calibration" domain, specifically how **Narrative Test Prompts** and **Clarity Checks** are used to prevent narrative drift, ensuring that every artifact—from sales decks to PRDs—remains aligned with the core strategy.

### Assets
The repository is organized to maintain a strict separation between schema, instance data, and the history of change:

*   **Ontology (`ontology.rdf`)**: The RDF schema defining the classes, properties, and concept schemes (e.g., Narrative Architecture, Style, Conviction) that govern the graph.
*   **Collective Memory Snapshot**: The compiled state of the graph, representing the current "truth" derived from all processed memories and transactions.
*   **Transactions (`.sparql`)**: Individual files representing discrete updates to the graph. These provide the provenance for every fact, linking snapshot nodes back to their source memories.
*   **Memories (`.md`)**: The primary source documents (interviews, call transcripts, strategy papers) from which the graph is extracted.
*   **Story Templates (`.story`)**: Markdown prompts that define the structure and objective for AI-generated documents based on the collective memory.

### Transactions
The transaction history for this collective memory is currently minimal, as the system is in its initial setup phase.

*   **Initial Ontology Load**: The most recent (and primary) transaction involved the ingestion of the `NarrativeArchitecture` ontology. This established the core domains and the **Style Rubric** used for evaluating narrative artifacts. This transaction is significant as it provides the "rules of the game" for all subsequent knowledge extraction and story generation.

---

### StyleRubric Evaluation

| Criterion | Score | Reasoning |
| :--- | :--- | :--- |
| **Register Fit** | 4 | The tone is professional and authoritative, matching the "Narrative Architecture" domain. |
| **Phrasing (Idiolect)** | 3 | Uses domain-specific terms (e.g., "Conviction," "Product Ladder") but lacks unique individual "stock phrases" due to the absence of specific person-based memories. |
| **Cadence** | 4 | Employs a mix of sentence lengths and clear, structured sections that provide a steady reading rhythm. |
| **Strategic Alignment** | 5 | Strictly adheres to the provided ontology and the "Narrative Architecture" framework. |
| **Audience Tailoring** | 3 | The summary is well-structured for a general stakeholder but lacks the specific persona-based framing defined in the ontology. |
| **Resonance** | 2 | While clear, the lack of specific case studies or analogies in the current snapshot limits the emotional or illustrative resonance. |
| **Flow** | 4 | Transitions between the state, stories, and assets are logical and follow the requested structure. |
| **Novelty** | 3 | The framework itself is novel, but the delivery is standard for a technical summary. |
| **Accuracy** | 5 | Every claim is directly grounded in the provided ontology and snapshot data. |

**Overall Score: 3.7 / 5**

---

### Analysis of Collective Memory

**TL;DR**: The collective memory has a world-class skeletal structure (the ontology) but lacks the "flesh" of specific instance data (people, dates, decisions, and results). This results in highly accurate but abstract summaries.

#### Improvements for Collective Memory
*   **Add Primary Source Memories**: The graph needs `.md` files containing actual strategy sessions, founder interviews, or market research. This will allow the `storyWRITER` to cite specific people and contexts, moving from "The ontology says..." to "Daniel decided during the Q1 planning session...".
*   **Populate Conviction Levels**: Currently, the conviction levels are defined but not applied to many claims. Adding transactions that assign `hasConvictionLevel` to specific strategic points will allow for more nuanced reporting on what is "settled" vs. "exploratory."
*   **Incorporate Style Profiles**: Adding specific `SpeakerProfile` instances (e.g., for a CEO or Head of Product) will allow the AI to adopt a more human, less "AI-standard" idiolect, significantly improving the Phrasing and Resonance scores.

#### Improvements for the Story Prompt
*   **Persona Specification**: The prompt could be iterated to specify a target persona (e.g., "Write this for a new Board member" or "Write this for the Engineering team"). This would trigger the `AudienceFrames` and `PersonaVoiceVariants` logic in the ontology.
*   **Mermaid Integration**: Explicitly requesting Mermaid diagrams for the "Product Ladder" or "Conviction Escalation Path" would enhance the visual communication of the state.

#### Next Actions
1.  **User Action**: Add at least three raw memory files (`.md`) covering a recent strategic decision, a product roadmap discussion, and a market analysis.
2.  **AI Action**: Once memories are added, I will re-run the `compile_layered` tool to extract specific claims and generate a new draft that includes full narrative footnotes and person-based citations.