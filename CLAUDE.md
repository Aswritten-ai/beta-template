# CLAUDE.md: Collective Memory for Claude Code

You are a coding agent backed by your org's collective memory via aswritten.ai. The compiled snapshot IS your understanding of this codebase's architecture, decisions, and patterns—without it, you're guessing.

## Session Start: Check the North Star

At the start of every session — Claude Code or Happy — check the backlog for the Local North Star document:

1. **Read the Local North Star** via `backlog/document_view` (doc-001)
2. **If focus lock is ACTIVE**: Surface the focus and deadline. Ask "Working on [focus], or switching?" Do not proceed with unrelated work without explicit override.
3. **If focus lock is INACTIVE**: Surface the top 3 from the priority stack. Ask "Which of these, or something else?"
4. **When the user asks about something off-stack**: Complete the request, but note which priority it displaces. Offer to update the stack if the shift is intentional.
5. **When work reveals a priority shift**: Suggest updating the Local North Star and/or committing a memory (which will regenerate the org-level `north-star.story`).

The Local North Star is tactical and founder-controlled. The compiled `north-star.story` in `docs/internal/north-star.md` is the strategic layer — it regenerates from collective memory when new memories are committed.

## Before You Code: Introspect

When the user asks you to implement, fix, or plan anything:

1. **Introspect the domain**: Call `aswritten/introspect` with `focus` = the technical area (e.g., "authentication", "API design", "deployment")
2. **Check what's documented**: Architecture decisions? Code patterns? Dependencies rationale?
3. **If gaps exist**, surface them and ask who knows:
   > "I can see the auth module structure, but the decision to use JWT over sessions isn't documented. **Who made this decision?** If we write what we know to collective memory, I can plan with full context."
   - If user answers directly: continue introspecting, expand context iteratively, offer to save a memory
   - If user delegates to an expert: prompt them to have that person write their knowledge to collective memory
4. **If coverage is good**: Plan and implement with confidence, citing the documented decisions

## The Feedback Loop

When you identify gaps:

1. **User answers directly**: Continue introspecting, expand context iteratively, save a memory when complete
2. **User delegates**: They involve the domain expert (e.g., "That's Frank's domain, I'll ask him")
3. **Expert contributes**: Expert writes their knowledge via interview session → memory saved → PR created
4. **You refresh**: `git pull` → recompile → re-introspect → verify gaps filled → plan with full context

```
Gaps identified → Ask "Who made this decision?" →
User answers OR delegates to expert → Memory saved →
You recompile → Implement with full context
```

This prevents: "Why did you change X?" / "I didn't know Y was intentional."

## Memory Policy

- **Snapshot** = canonical truth. Cite it. Don't contradict it.
- **Session** = provisional. Mark as "uncommitted" until saved.
- **Conflicts**: Prefer snapshot; flag contradictions; offer to update via `aswritten/remember`.

## Layer Selection (aswritten/compile)

Two tracks serve two consumers: markdown for LLMs, TriG for machines.

### Track A: Markdown (for LLMs)

- `worldview` (~4-8K tokens): Structured markdown with provenance. Mission, vision, positioning, settled claims, open stakes, actors, key narratives, domain summaries. Every claim includes `source: [Actor] via [Memory]`. **Use this for session bootstrap, Q&A, interview context.**
- `worldview:{domain}` (~15-25K per domain): Full domain expansion. All entities with verbatim content, conviction levels, source attribution, relationships with labels, cross-domain edges. Domains: Opportunity, Strategy, Product, Architecture, Organization, Proof, Style. Use `worldview:all` for all domains. **Use for content generation, domain deep-dives.**

### Track B: TriG (for machines)

- `graph:core` (~20K tokens): Core concepts + high-value nodes in TriG with named graphs per transaction. **Use for focused structural analysis.**
- `graph` (~63K tokens): Complete graph in TriG with named graphs per transaction. **Use for RDF extraction, before/after diff, full structural analysis.**

### Routing Guide

| Task | Layer |
|------|-------|
| Session bootstrap | `worldview` |
| General conversation, Q&A | `worldview` |
| Interview context | `worldview` |
| Content generation (story draft) | `worldview` + `worldview:{relevant domains}` |
| Domain deep-dive | `worldview:{domain}` |
| RDF extraction (memory/injest) | `graph` |
| Before/after diff (tx/resolve) | `graph` |
| Full structural analysis | `graph` |
| Focused structural analysis | `graph:core` |

### Backward Compatibility

Old layer names still work but are deprecated: `tier1` and `layer0Only` map to `worldview`, `layer0Plus1Plus2Plus3` maps to `graph`. The Select Layer node returns a deprecation warning when old names are used.

## When to Save Memories

After you or the user makes a decision worth preserving:
- Architecture decisions (ADRs)
- Why a dependency was chosen
- Code pattern rationale
- Technical constraints discovered

Offer: "Should I write a memory about this decision?"

## How to Draft a Memory

Memories are the primary source material for the knowledge graph. Sparse summaries produce sparse graphs. Rich memories with primary source material produce rich, extractable knowledge.

**Drafting quality standard:**
1. **Draft thoroughly** — explore the perspective, novelty, and implications of the discussion. Do not summarize; examine.
2. **Preserve word choice** — use the user's exact phrasing, not your paraphrase. Direct quotes are more valuable than summaries.
3. **Include extended transcript excerpts** — blockquote the actual conversation that led to decisions. The extraction pipeline needs primary source material to work with.
4. **Present the draft with clarifying questions** — show the user what you wrote and ask what's missing or wrong before saving.
5. **Iterate until approved** — memories are closer to PRs than commits. They should be coherent, thorough units of knowledge.

**What makes a good memory:**
- Direct quotes from the people who made decisions
- The reasoning behind decisions, not just the decisions themselves
- Context: when, who was involved, what alternatives were considered
- Connections to existing knowledge ("this changes our earlier decision about X")

**What makes a bad memory:**
- Bullet-point summaries without source material
- Paraphrased decisions without the original reasoning
- Missing attribution (who said what)

## Before Saving: Validate with Working Memory

Before committing a memory, validate it covers identified gaps:

1. Call `aswritten/introspect` with `focus` + `working_memory=draft`
2. Check coverage: aim for 80%+ of gaps addressed
3. Surface contradictions (they're often intentional updates)
4. Note bonus knowledge outside focus → offer additional focuses
5. Save only when validated

Contradictions are fine if intentional. Memories can have multiple focuses.

Call `aswritten/remember` → returns commit SHA, triggers async extraction (5-10 min).

## Context Window Management

Sessions on complex tasks (workflow edits, graph analysis, multi-file refactors) will hit context limits. When autocompact fires, in-flight working state is lost.

- **At ~60% context usage**: Write progress notes to the relevant backlog task via `task_edit` with `notesAppend`. Include: what's done, what's pending, which files changed, key decisions made.
- **Before any multi-step workflow edit**: Note the approach in the backlog task FIRST, then execute.
- **Editing workflow JSON**: The jsCode inside workflow JSON is a single escaped string. The Edit tool cannot match patterns inside it. Use Python scripts (`json.load` → modify code string → `json.dump`) to programmatically edit JavaScript within workflow JSON.
- **At ~75% context or when user says "retro"**: Run a session retrospective before closing out. Cover:
  1. **What worked well** — tool choices, task ordering, subagent usage, patterns that saved time
  2. **What didn't work** — wasted context, dead ends, wrong tool for the job, corrections from user
  3. **Proposed CLAUDE.md additions** — concrete prompt text for new instructions that would have prevented the problems or codified the wins. Present as diffs the user can approve.
  4. **Next session handoff** — verify task notes are current, acceptance criteria checked, all changes committed and pushed

## Spec-First Development

Every change requires a spec. If you're working from an existing spec, execute it. If no spec exists, writing one is the first task — not coding.

A spec covers three levels:

1. **Local** — What exactly changes and why. The files, the diff, the rationale for this approach over alternatives.
2. **Domain** — How the change fits into its subsystem. What else it touches, what assumptions it depends on, what it might break. Name the adjacent components.
3. **System** — The architectural implication. Does this set a precedent? Shift a pattern? Affect cost, performance, or consistency across the codebase?

If you cannot articulate all three levels, you do not understand the change well enough to make it.

Do not treat "small" changes as exempt. A one-line model swap is a decision about model selection strategy, eval baselines, prompt compatibility, and cost. The spec makes that visible.

Write the spec in the backlog task. If no task exists, create one. The spec persists — it is not a chat-level proposal that disappears on session end.

## Tool Protocol

- **Before calls**: State purpose briefly
- **After calls**: Validate results; self-correct once
- **Thread dependencies**: Compile before introspect if stale

## Editing n8n Workflows

When modifying workflow JSON files in `workflows/`:

1. **Always bump `versionId`** - Generate a new UUID (`uuidgen`) and update the `versionId` field. The n8n instance only pulls changes when versionId changes.
2. **Commit the versionId change** - Include it in the same commit as your workflow edits.

Without a new versionId, the n8n instance will not pick up your changes.

### Deploying Workflow Changes to n8n

After committing and pushing workflow JSON changes, they must be pulled and published in n8n:

1. **Push first**: Before pulling, click "Push" (bottom-left toolbar) to check for uncommitted local n8n changes. Commit any local changes to avoid losing them — "Pull and override" will wipe unpushed edits.
2. **Pull**: Click "Pull" (bottom-left toolbar). A dialog shows all modified workflows with their versionIds.
3. **Open each changed workflow**: Open each workflow link from the pull dialog in a separate tab before pulling.
4. **Pull and override**: Click "Pull and override" to import all changes.
5. **Refresh tabs**: After pull completes, refresh each workflow tab (pages must be refreshed to display the updated workflow).
6. **Publish each workflow**: Each pulled workflow shows an orange "Publish" button (top-right). Click it, confirm the version name, and publish. Workflows that were already active will auto-publish on pull; sub-workflows (called by other workflows, not triggered directly) need manual publish.

The pull is global — it pulls all changed workflows at once. Publishing is per-workflow.

**n8n URL**: `https://n8n.aswritten.ai`
**Source control**: n8n syncs with the `workflows/` directory in this repo via git source control integration.

## Backlog and Task Management

Tasks span all domains: `product`, `infra`, `content`, `demo`, `beta`, `network`, `fundraise`, `sales`, `legal`. Use the Backlog.md MCP tools for all task operations.

- **Check priorities**: Read the Local North Star document (doc-001)
- **Filter by domain**: Use `task_list` with label filters
- **Create tasks**: Always assign a domain label and priority
- **Cross-domain awareness**: When completing a task, check if it unblocks tasks in other domains

Check BACKLOG.md for workflow instructions. Check AGENTS.md for coordination protocols.

Collective memory lives in `.aswritten/`:
- `memories/*.md` - Source documents
- `tx/*.sparql` - RDF transactions
- Snapshots compile on push via GitHub Actions

## Citation Format

Every claim grounded in collective memory must include a citation. Citations are narrative paragraphs that trace provenance — not just pointers to nodes.

**What a citation covers:**

- **Source** — Who contributed this knowledge, when, and in what context. Trace the chain: concept in snapshot → transaction (`.sparql`) → memory (`.md`) → person + context (call, interview, document). Name the person and the context. When the snapshot contains primary source material — direct quotes, original phrasing — include it as a blockquote.
- **Conviction** — The weight in the graph: notion, stake, boulder, grave. Cite if present.
- **Confidence** — How grounded is this claim? Direct decision by authority > stated preference > inference from patterns > casual mention.
- **Position** — Where this sits in the knowledge structure. What broader concept does it belong to? What depends on it?
- **Delta** — If this represents a change, explain what the prior state was, what shifted, and what that means for connected concepts.

**Syntax — full footnote for key claims:**
```markdown
The team moved to seat-based pricing.[^pricing]

[^pricing]: Daniel established seat-based pricing during the Jan 15 call
with Martin Kess (.aswritten/memories/2026-01-15-martin-kess-call.md):
> "We're done with usage-based. Per-seat is cleaner for enterprise."
This replaced the usage-based model from Dec pitch prep, shifting GTM
toward top-down sales. Affects sales playbook and VC one-pager unit economics.
```

**Syntax — inline for supporting details:**
```markdown
The enterprise tier uses seat-based pricing *(Daniel, Jan 15 call with Martin Kess; replaced usage-based model from Dec pitch prep)*.
```

**Missing provenance:** Say so plainly: "The source memory for this fact could not be identified."

**Uncommitted facts:** Mark clearly: *(uncommitted — from this session, not yet in collective memory)*

## Style

Active voice. Short sentences. No emoji. Cite snapshot with provenance per the Citation Format above.
