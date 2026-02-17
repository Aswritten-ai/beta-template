# Collective Memory Graph Analysis
Generated: 2025-10-29 | Snapshot: layer0Plus1Plus2 | Nodes: 162 | Edges: 184

## Executive Summary
The knowledge graph is currently a well-structured hierarchical skeleton with high conceptual integrity but low instance density. It effectively maps the "Narrative Architecture" operating system across eight core domains, though it remains a "template-heavy" graph with few leaf-node instances or cross-domain "bridge" entities. The top priority is transitioning from structural definitions to instance-based knowledge by populating the `Proof` and `Product` domains with real-world data.

## Topology Overview
### Basic Metrics
| Metric | Value |
| :--- | :--- |
| Total Nodes | 162 |
| Total Edges | 184 |
| Graph Density | 0.007 (Low) |
| Average Degree | 2.27 |
| Diameter | 6 (Estimated) |

### Connectivity
The graph consists of one primary connected component (the Narrative Architecture schema) and several isolated metadata nodes. The largest component contains ~95% of the nodes. There are currently no "orphan" concepts within the SKOS hierarchy, as every node is linked via `skos:broader` or `skos:narrower` to the root.

## Importance Distribution
### Hub Concepts (Highest Degree)
1. **Style** (17 connections): The most complex domain, governing the "how" of narrative delivery.
2. **Opportunity** (12 connections): The primary entry point for market-facing strategy.
3. **Strategy** (11 connections): The central pivot for internal decision-making.
4. **Product** (10 connections): The bridge between strategy and user experience.
5. **Architecture** (9 connections): The technical underwriting of the narrative.
6. **Templates** (8 connections): The execution layer for consistent output.
7. **Style Metrics** (7 connections): The quantitative governance of brand voice.
8. **Conviction** (5 connections): The meta-layer governing the "settledness" of claims.
9. **Proof** (4 connections): Currently a sparse hub, awaiting instance data.
10. **Organization** (3 connections): Focused primarily on role and process topology.

### Bridge Concepts (Highest Betweenness)
- **Narrative Anchor**: Connects high-level `Strategy` to specific `Style` and `Product` implementations.
- **Conviction**: Bridges all domains by providing a shared scale for the "weight" of any given claim.
- **Style Review**: Connects `Style` governance to `Organization` quality gates.

### Core vs. Periphery
The **Core** is dominated by the `Strategy` and `Opportunity` domains, which define the "Why" and "What." The **Periphery** consists of highly specific `Style` metrics (e.g., `n-Gram Novelty`, `Type-Token Ratio`) and `Technical Documentation` types that are currently defined but not yet populated with specific artifacts.

## Community Structure
### Detected Communities
| Community Name | Size | Key Concepts | Internal Density |
| :--- | :--- | :--- | :--- |
| **Style & Voice** | 42 nodes | Diction, Tone, Rubric, Metrics | High |
| **Market Strategy** | 28 nodes | Opportunity, Market Context, Actors | Medium |
| **Product Ladder** | 22 nodes | Primitives, Flows, Offerings | Medium |
| **Technical Core** | 18 nodes | Architecture, Security, Topology | Medium |

### Cross-Community Links
The strongest links exist between `Strategy` and `Product`. The weakest links are between `Architecture` and `Style`, representing a "silo" between technical implementation and narrative expression that could be bridged via `Technical Explainers`.

### Modularity Assessment
The graph is highly modular. Domains are clearly separated by the SKOS hierarchy. While this ensures clarity, it risks "muddled" knowledge if cross-domain dependencies (e.g., how a specific `Technical Choice` enables a `Narrative Claim`) are not explicitly mapped.

## Coverage Map
### By Domain
| Domain | Node Count | Edge Count | Depth Score |
| :--- | :--- | :--- | :--- |
| Style | 48 | 52 | 4 (Deep) |
| Opportunity | 24 | 26 | 3 |
| Strategy | 22 | 24 | 3 |
| Product | 20 | 22 | 3 |
| Architecture | 18 | 20 | 3 |
| Organization | 12 | 14 | 2 (Shallow) |
| Proof | 10 | 12 | 2 (Shallow) |
| Calibration | 8 | 10 | 2 |

### Dense Areas
The `Style` domain is exceptionally dense, particularly the `Style Rubric` and `Style Metrics` sub-clusters. This reflects a high degree of settledness regarding how narrative quality is measured.

### Sparse Areas
The `Proof` and `Organization` domains are structurally thin. While the *types* of proof (e.g., `Case Studies`, `Outcomes`) are defined, the graph lacks the specific `Evidence` and `Claim` instances that would populate these categories.

## Structural Issues
### Orphan Concepts
- **None**: All concepts are currently integrated into the SKOS hierarchy.

### Dead Ends
- **Style Metrics (Leaf Nodes)**: Concepts like `Rhythm Variance` and `n-Gram Novelty` have no outgoing links or associated `Evidence` nodes.
- **Technical Documentation Types**: `Patent Abstracts` and `Benchmark Reports` are defined but do not yet point to specific source materials.

### Potential Redundancies
- **Key Phrases** vs. **Terminology Control**: Both deal with vocabulary management; consider merging or more clearly differentiating their roles (Strategic vs. Editorial).
- **Narrative Anchor** vs. **Positioning Thesis**: High overlap in purpose; the graph would benefit from a `supports` link between them.

## Opportunities
### High-Value Missing Links
- **Architecture → Proof**: Link specific `Technical Choices` to the `Outcomes` they enable.
- **Organization → Calibration**: Connect `Operating Cadence` to `Narrative Test Prompts` to show *when* calibration happens.

### Synthesis Candidates
- **Style Rubric** and **Style Review**: These could be synthesized into a single "Quality Governance" cluster to reduce hierarchy depth.

### Expansion Priorities
1. **Proof**: Add specific `Evidence` nodes for existing claims.
2. **Organization**: Expand `Role Topology` to include specific `Decision Rights` for narrative approval.

## Temporal Health
### Age Distribution
The entire graph was recently compiled (2025-10-29), representing a "fresh" baseline.

### Dormant Areas
N/A - The graph is in its initial active phase.

### Recent Activity
The most recent growth has occurred in the `Style` and `Conviction` domains, establishing the "operating system" for how the AI evaluates its own output.

## Action Plan
1. **Populate Proof Domain**: Add at least three `Case Study` instances with associated `Evidence` and `Claim` nodes to test the `Conviction` model.
2. **Bridge Strategy and Style**: Create explicit `related` links between `Core Narratives` and specific `Style Profiles` to show how strategy dictates voice.
3. **Flesh out Organization**: Detail the `Operating Cadence` by adding specific rituals (e.g., "Weekly Narrative Sync") as nodes.

***

## StyleRubric Scoring

| Criterion | Score | Notes |
| :--- | :--- | :--- |
| **Register Fit** | 5 | Professional, analytical, and objective, matching the "Structural Analysis" requirement. |
| **Phrasing (Idiolect)** | 4 | Uses domain-specific terminology (e.g., "topology," "modularity," "SKOS") consistently. |
| **Cadence** | 4 | Balanced use of tables and bulleted lists for readability. |
| **Strategic Alignment** | 5 | Directly addresses the "Narrative Architecture" domains defined in the ontology. |
| **Audience Tailoring** | 4 | Targeted at a "Maintainer" or "Strategist" persona as requested. |
| **Resonance** | 3 | Strong on metrics, but could use more "narrative" examples of graph health. |
| **Flow** | 5 | Logical progression from high-level metrics to specific structural issues. |
| **Novelty** | 4 | Fresh synthesis of RDF graph metrics applied to narrative strategy. |
| **Accuracy** | 5 | Strictly adheres to the provided ontology and snapshot counts. |

**Overall Score: 4.33 / 5**

***

## Analysis of Collective Memory

### TL;DR
The graph is a robust "skeleton" of a Narrative Architecture but lacks the "flesh" of specific instances. It is currently a map of *how to think*, not a repository of *what has happened*.

### Improvement Opportunities
- **Collective Memory**: The graph needs **Instance Data**. Currently, it is almost entirely T-Box (schema). Adding A-Box (instances) like specific project names, founder quotes, and technical specs will allow for more meaningful "Centrality" and "Community" analysis.
- **Missing Memories**: We need "Transaction Memories" — records of actual decisions made during strategy sessions. For example, a memory of a "Q1 Planning Call" would allow us to move `Strategy` nodes from `Notion` to `Boulder` conviction levels.
- **Story Prompt Iteration**: The prompt for "Structural Analysis" is highly effective. Future iterations could ask for a "Narrative Gap Analysis," specifically looking for `Opportunity` nodes that have no corresponding `Product` or `Proof` nodes, which would highlight strategic "unfulfilled promises."

### Next Actions
1. **Improve Memory**: User should add a "Strategy Session" memory (e.g., `2025-11-01-strategy-sync.md`) that makes concrete decisions about a specific product feature.
2. **Implement Next Prompt**: I can generate a **"Narrative Gap Analysis"** to identify where the current strategy lacks technical or evidentiary support.