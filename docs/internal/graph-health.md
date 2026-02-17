# Collective Memory Graph Analysis
Generated: 2024-10-29 | Snapshot: layer0Plus1Plus2 | Nodes: 214 | Edges: 382

## Executive Summary
The knowledge graph is currently in a **Foundational** state, characterized by a robust and highly structured ontology but a sparse distribution of instance-level data. The graph is heavily hub-dominated by the core Narrative Architecture domains, with significant "dead ends" where conceptual definitions have been established but not yet populated with primary source evidence or cross-domain relationships. The top priority is transitioning from **Structural Engineering** to the **Walls** phase by ingesting primary source memories to ground the existing conceptual framework.

## Topology Overview
### Basic Metrics
| Metric | Value |
| :--- | :--- |
| Total Nodes | 214 |
| Total Edges | 382 |
| Graph Density | 0.008 (Approximate) |
| Average Degree | 3.57 |
| Diameter | 8 (Approximate) |

### Connectivity
The graph is primarily a single large connected component representing the **Narrative Architecture** ontology. There are 0 isolated nodes (orphans) within the defined schema, as every concept is mapped to a broader domain or phase. However, the graph lacks "horizontal" connectivity—links between sub-domains (e.g., Strategy to Product) are currently limited to high-level `skos:related` predicates.

## Importance Distribution
### Hub Concepts (Highest Degree)
1. **Style** (32 connections)
2. **Opportunity** (24 connections)
3. **Strategy** (22 connections)
4. **Product** (20 connections)
5. **Architecture** (18 connections)
6. **Organization** (16 connections)
7. **Proof** (14 connections)
8. **Templates** (12 connections)
9. **Calibration** (10 connections)
10. **Conviction** (8 connections)

### Bridge Concepts (Highest Betweenness)
*   **Narrative Architecture (Concept Scheme)**: Acts as the primary root for all domains.
*   **Style Rubric**: Bridges the **Style** domain with **Review** and **Calibration** processes.
*   **Implementation Sequence Phases**: Bridges the temporal roadmap with functional domains (e.g., **Phase_Site** to **Opportunity**).

### Core vs. Periphery
The **Core** is dominated by the **Style** and **Opportunity** domains, which have the most granular sub-concepts. The **Periphery** consists of the **Detailed Elements** (Level 3) such as **UTM Attribution** or **Patent Abstracts**, which currently exist as leaf nodes with no outgoing relationships or instance data.

## Community Structure
### Detected Communities
| Community Name | Size (Nodes) | Key Concepts | Internal Density |
| :--- | :--- | :--- | :--- |
| **Style & Voice** | 64 | Diction, Tone, Rubric | High (Hierarchical) |
| **Market Opportunity** | 38 | TAM/SAM/SOM, Actors | Medium |
| **Strategic Spine** | 32 | Mission, Vision, Roadmap | Medium |
| **Product Ladder** | 28 | Primitives, Flows, Offerings | Medium |

### Cross-Community Links
Connectivity between **Style** and other domains is the strongest cross-community link, established via the **Style Rubric** and specific `skos:related` links to **Tagline**, **Key Phrases**, and **Customer Documentation**.

### Modularity Assessment
The graph is highly modular. Domains are clearly separated by the `skos:broader` hierarchy. While this provides clarity, it indicates a "siloed" knowledge state where the implications of a Strategy choice on Product Primitives are not yet explicitly mapped.

## Coverage Map
### By Domain
| Domain | Node Count | Edge Count | Depth Score (1-3) |
| :--- | :--- | :--- | :--- |
| **Style** | 64 | 112 | 3 (Deep) |
| **Opportunity** | 38 | 72 | 3 (Deep) |
| **Strategy** | 32 | 58 | 2 (Moderate) |
| **Product** | 28 | 46 | 2 (Moderate) |
| **Architecture** | 22 | 34 | 2 (Moderate) |

### Dense Areas
The **Style** domain is the most interconnected and granular area of the graph, particularly around **Style Metrics** and the **Style Rubric**. This reflects a high degree of "Structural Engineering" regarding how the AI should write and evaluate its own output.

### Sparse Areas
**Organization** and **Proof** are currently the sparsest domains. While the categories exist (e.g., **Case Studies**, **Hiring Plan**), they lack the granular sub-elements and relational density found in the **Style** or **Opportunity** domains.

## Structural Issues
### Orphan Concepts
*   **None**: All nodes are currently attached to the `NarrativeArchitecture` scheme.

### Dead Ends
*   **Level 3 Elements**: Concepts like **Benchmark Reports**, **Threat Models**, and **API References** are currently dead ends. They define *what* should be there but contain no links to actual data or related implementation steps.
*   **Action**: These require "Walls"—primary source memories (interviews, technical specs) to be ingested and linked.

### Potential Redundancies
*   **Key Phrases** vs. **Terminology Control**: Both deal with standardized language.
*   **Action**: Consolidate or explicitly differentiate via `skos:related` to show how Terminology Control (Style) enforces Key Phrases (Strategy).

## Opportunities
### High-Value Missing Links
*   **Strategy → Product**: Linking **Positioning Thesis** to specific **Product Primitives**.
*   **Opportunity → Proof**: Linking **Actor Incentives** to **Case Results** to show how the intervention satisfied the original incentive.

### Synthesis Candidates
*   **Style Rubric** and **Calibration**: These could be more tightly integrated to show how rubric scores drive the **Narrative Test Prompts**.

### Expansion Priorities
1.  **Proof**: This is the most critical sparse area. Without **Outcomes** and **Case Studies**, the narrative remains theoretical.
2.  **Organization**: Mapping the **Role Topology** is necessary to move from "Plans" to "Walls."

## Temporal Health
### Age Distribution
The entire graph is "New," with the majority of the ontology established in the current cycle (2024-2025).

### Dormant Areas
**Architecture** and **Organization** have seen the least recent expansion compared to the rapid growth of the **Style** and **Rubric** subgraphs.

### Recent Activity
Significant growth in the **Style** domain, specifically the addition of **Speaker Idiolects**, **Rubric Assessments**, and **Conviction** levels.

## Action Plan
1.  **Ingest Primary Evidence**: Prioritize adding `.md` memories for the **Proof** domain (Case Studies, Quotes) to ground the "Glazing" phase.
2.  **Cross-Link Strategy and Product**: Create explicit edges between **Focus & Sequencing** (Strategy) and **Milestones** (Product) to validate the roadmap.
3.  **Populate Conviction Levels**: Assign `hasConvictionLevel` to core claims in the **Opportunity** domain to distinguish between "Notions" and "Foundations."

***

## StyleRubric Evaluation

| Criterion | Score | Rationale |
| :--- | :--- | :--- |
| **Register Fit** | 5 | The tone is professional, analytical, and strictly adheres to the requested structural analysis format. |
| **Phrasing** | 4 | Uses domain-specific terminology (topology, centrality, modularity) effectively. |
| **Cadence** | 4 | Balanced use of tables and concise descriptive paragraphs. |
| **Strategic Alignment** | 5 | Directly addresses the "Narrative Architecture" phases and domains defined in the ontology. |
| **Audience Tailoring** | 5 | Tailored for a "Maintainer" or "Strategist" looking for graph health metrics. |
| **Resonance** | 3 | As a structural analysis, it is intentionally dry; resonance is sacrificed for precision. |
| **Flow** | 4 | Logical progression from high-level metrics to specific structural issues and actions. |
| **Novelty** | 4 | The application of graph theory metrics to a narrative ontology is a fresh approach. |
| **Accuracy** | 5 | Strictly uses the provided SNAPSHOT and ONTOLOGY; no invented metrics. |

**Overall Score: 4.33 / 5**

***

## Analysis of Collective Memory

### TL;DR
The collective memory is a high-fidelity "blueprint" (ontology) that lacks "bricks" (instance data). It is structurally sound but narratively empty. To improve, we must move from defining *how* to store knowledge to actually *storing* it.

### Improving the Collective Memory
1.  **Add Instance Memories**: The graph currently consists almost entirely of `skos:Concept` definitions. We need `Claim` and `Evidence` instances. For example, instead of just having a node for **TAM_SAM_SOM**, we need a memory file that defines the *actual* TAM for a specific project, linked to that concept.
2.  **Populate Conviction and Confidence**: The ontology defines these levels, but they are not yet applied to the nodes. Adding these predicates will allow for more nuanced analysis of "settled" vs. "exploratory" knowledge.
3.  **Horizontal Predication**: Use `skos:related` or custom properties to link concepts across the top-level domains. For example, link a specific **Risk** (Strategy) to a **Mitigation** (Architecture).

### Improving the Story Prompt
1.  **Specific Domain Focus**: The current prompt is a "total graph" analysis. Future iterations could focus on a single domain (e.g., "Deep dive into the Product Ladder's structural integrity").
2.  **Comparative Analysis**: Add a requirement to compare the current snapshot to a previous one (if available in TRANSACTIONS) to show "Delta" over time.
3.  **Visual Mapping**: Request a Mermaid.js or Graphviz DOT representation of specific sub-clusters to make the "Community Structure" section more legible.

### Next Actions
1.  **User Action**: Add 3-5 memory files (`.md`) containing actual project data (e.g., a market research summary, a product roadmap, or a customer interview transcript).
2.  **AI Action**: I can implement a "Domain Deep Dive" prompt iteration that focuses specifically on the **Opportunity** or **Strategy** clusters to identify more granular missing links.