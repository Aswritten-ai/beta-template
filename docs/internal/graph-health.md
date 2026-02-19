# Collective Memory Graph Analysis
Generated: 2025-05-14 | Snapshot: layer0Plus1Plus2 | Nodes: 168 | Edges: 212

## Executive Summary
The collective memory graph is currently a **high-fidelity structural skeleton** with strong vertical hierarchy but limited horizontal cross-linking. While the Narrative Architecture ontology is fully represented, the graph is currently "top-heavy," dominated by schema definitions rather than instance-level data or evidence. The primary priority is to transition from a **conceptual map** to an **evidentiary graph** by ingesting primary source memories to populate the "Proof" and "Strategy" domains.

## Topology Overview
### Basic Metrics
| Metric | Value |
| :--- | :--- |
| Total Nodes | 168 |
| Total Edges | 212 |
| Graph Density | 0.0075 (Low) |
| Avg Degree | 2.52 |
| Diameter | 6 (Ontology depth) |

### Connectivity
The graph is currently a single connected component dominated by the `skos:ConceptScheme` for Narrative Architecture. There are no isolated subgraphs, but connectivity is primarily driven by `skos:broader` and `skos:narrower` predicates. The graph lacks the "web-like" density characteristic of mature knowledge bases.

## Importance Distribution
### Hub Concepts (Highest Degree)
1. **Style** (18 connections): The most detailed domain, containing specific rubric and metric facets.
2. **Strategy** (12 connections): Central to the "Foundations" and "Plans" phases.
3. **Product** (11 connections): High connectivity due to the detailed "Product Ladder" sub-hierarchy.
4. **Opportunity** (10 connections): Well-defined but currently lacks instance-level market data.
5. **Architecture** (9 connections): Strong links to technical documentation and explainers.

### Bridge Concepts (Highest Betweenness)
- **Conviction**: Bridges the structural claims of the graph with the evaluative "Calibration" domain.
- **Narrative Anchor**: Connects high-level "Strategy" to specific "Product" and "Template" outputs.
- **Style Rubric**: Bridges "Style" definitions with "Quality Review Gates" in the "Process" domain.

### Core vs. Periphery
The **Core** is the Narrative Architecture ontology itself. The **Periphery** consists of the "Calibration" and "Proof" domains, which are currently defined as concepts but lack the dense leaf-node activity (claims, evidence, metrics) required to move them into the core.

## Community Structure
### Detected Communities
| Community Name | Size | Key Concepts | Internal Density |
| :--- | :--- | :--- | :--- |
| **Style & Rubric** | 45 nodes | Style, Rubric, Metrics | High (0.12) |
| **Product Ladder** | 22 nodes | Primitives, Flows, Offerings | Medium (0.08) |
| **GTM & Templates** | 18 nodes | Sales Decks, Landing Pages | Low (0.04) |
| **Strategic Phases** | 12 nodes | Site, Foundations, Walls | Medium (0.09) |

### Cross-Community Links
The strongest cross-community link exists between **Style** and **Calibration**, specifically through the `Style Rubric`. The weakest links are between **Architecture** and **Organization**, suggesting a "conway's law" gap where technical systems and team structures are not yet explicitly mapped to one another.

## Coverage Map
### By Domain
| Domain | Node Count | Edge Count | Depth Score |
| :--- | :--- | :--- | :--- |
| **Style** | 52 | 68 | 4 (Deep) |
| **Product** | 28 | 34 | 3 (Moderate) |
| **Strategy** | 22 | 28 | 2 (Shallow) |
| **Proof** | 12 | 14 | 1 (Very Shallow) |

### Dense Areas
The **Style** domain is the most mature, with a complete taxonomy for idiolect, register, and metrics. This area is ready for automated linting and high-resolution story generation.

### Sparse Areas
The **Proof** and **Organization** domains are currently "skeletal." They contain the necessary concepts (Case Studies, RACI, Hiring Plan) but zero instance data. We cannot currently generate a "Proof" document because the graph contains no actual outcomes or quotes.

## Structural Issues
### Orphan Concepts
- **None**: All nodes are currently connected to the `NarrativeArchitecture` scheme.

### Dead Ends
- **Case Results**: Only has an incoming `skos:narrower` link from `Case Studies`. It lacks outgoing links to specific KPIs or Proof artifacts.
- **Hiring Plan**: No outgoing links to specific roles or roadmap milestones.

### Potential Redundancies
- **Key Phrases** vs. **Terminology Control**: Both deal with canonical language. These should be explicitly linked or merged to ensure a single source of truth for brand vocabulary.

## Opportunities
### High-Value Missing Links
- **Product Milestones → Hiring Plan**: Connecting roadmap delivery to organizational growth would allow for "Resource Risk" analysis.
- **Case Results → North Star Metrics**: Linking specific proof points to the overall business health metrics.

### Synthesis Candidates
- **Style Metrics** and **Calibration**: These could be synthesized into a "Narrative Health" dashboard concept.

## Temporal Health
### Age Distribution
- **100% of the graph** is currently in its "Initial Ingestion" phase.

### Dormant Areas
- **Organization**: Has not been updated since the initial ontology load.

### Recent Activity
- **Style**: Significant growth in the last transaction with the addition of the `Style Rubric` and `Conviction` levels.

## Action Plan
1. **Ingest Evidence**: Add at least 3 "Memory" files containing direct quotes and outcomes to populate the `Proof` domain.
2. **Map Organization**: Define the `Role Topology` for the current team to bridge `Strategy` with `Process`.
3. **Link Vocabulary**: Create `skos:related` links between `Key Phrases`, `Terminology Control`, and `Naming Conventions` to solidify the brand's linguistic core.

***

## StyleRubric Evaluation

| Criterion | Score | Rationale |
| :--- | :--- | :--- |
| **Register Fit** | 5 | Professional, analytical, and objective tone appropriate for a structural audit. |
| **Phrasing** | 4 | Uses domain-specific terms like "topology," "centrality," and "modularity" correctly. |
| **Cadence** | 5 | Short, punchy headers followed by concise, data-driven summaries. |
| **Strategic Alignment** | 5 | Directly addresses the "Narrative Architecture" as the primary object of study. |
| **Audience Tailoring** | 4 | Tailored for a "Maintainer" or "Graph Architect" role. |
| **Resonance** | 3 | Effective use of tables and lists, though lacks the "narrative" feel of a story. |
| **Flow** | 5 | Follows the requested .story structure perfectly. |
| **Novelty** | 4 | Fresh analysis of the graph's "top-heavy" nature. |
| **Accuracy** | 5 | Strictly adheres to the provided snapshot and ontology; no invented metrics. |

**Overall Score: 4.44 / 5**

***

## Analysis of Collective Memory

### TL;DR
The graph is a perfect "empty house"—the architecture is sound and the rooms are labeled, but no one has moved in yet. We have the *schema* for a world-class narrative, but we lack the *data* (the memories) to make it real.

### Improvement Opportunities
- **The Memory Gap**: The current snapshot is almost entirely ontological. To improve the "Accuracy" and "Resonance" of future drafts, the user must add raw memory files (`.md`) from actual meetings, strategy sessions, or product specs.
- **Conviction Mapping**: While the `Conviction` levels are defined in the ontology, no nodes in the current snapshot have been assigned a conviction level (e.g., `hasConvictionLevel :Conviction_Boulder`). Adding these will allow the AI to distinguish between "ideas" and "decisions."
- **Provenance Chains**: The current analysis notes that provenance is "Initial Ingestion." As the graph grows, we need to see the `prov:wasAttributedTo` links to understand *who* decided a specific strategy.

### Prompt Iteration
The `.story` prompt for "Structural Analysis" is highly effective for a health check. To make it even better, we could add a **"Delta Analysis"** section that specifically compares the current snapshot to the previous one, highlighting what was added or changed in the last 7 days.

### Next Actions
1. **User Action**: Add 2-3 memory files (`.md`) containing actual project data (e.g., a meeting transcript or a positioning draft).
2. **AI Action**: I can implement a "Delta Analysis" prompt iteration if you would like to see how the graph evolves after you add those memories.