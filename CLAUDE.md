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

- `tier1` (~3-4K tokens): Structured markdown worldview index. **Use this for session bootstrap.** Contains mission, vision, positioning, settled claims, open stakes, actors, key narratives, and domain map. Start every session here, then escalate to Turtle layers only if raw graph access is needed.
- `layer0Only` (~20K tokens): Core narrative as Turtle RDF. Mission, positioning, key actors, stakes, style.
- `layer0Plus1` (~60K tokens): Cumulative — layer0 + high-value nodes (3+ references, rich content). Q&A, planning.
- `layer0Plus1Plus2` (~60K tokens): Cumulative — all domain content with full attribution. Content generation.
- `layer0Plus1Plus2Plus3` (~63K tokens): Cumulative — full graph as TriG with named graphs per transaction. Use `aswritten/introspect` instead of querying directly.

Layers are cumulative: each includes everything from the layers below it. The naming makes this explicit (layer0Plus1 = layer0 + layer1).

## When to Save Memories

After you or the user makes a decision worth preserving:
- Architecture decisions (ADRs)
- Why a dependency was chosen
- Code pattern rationale
- Technical constraints discovered

Offer: "Should I write a memory about this decision?"

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

## Before Implementing: Propose the Architecture

Before writing code or editing workflows, propose the change architecture to the user. Even for "obvious" fixes:

1. **State the change** — what files, what nodes, what the diff looks like
2. **State the approach** — why this path over alternatives. Prefer modifying existing nodes/parameters over adding new ones. Prefer reusable patterns over one-off solutions.
3. **Wait for approval** — the user may see a simpler path or want a different abstraction

Do not skip this for "small" changes. Small changes compound into architecture. Every implementation choice is a design decision.

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

## Style

Active voice. Short sentences. No emoji. Cite snapshot with provenance when referencing documented decisions.
