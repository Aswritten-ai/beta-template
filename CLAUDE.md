# CLAUDE.md: aswritten.ai

Read `ASWRITTEN.md` for collective memory instructions — tool usage, product concepts, and behavioral guidelines. That file is the foundation for how you understand and work with this organization's knowledge.

Read `BACKLOG.md` for task management workflow.

Read `CLOJURE.md` for Clojure-specific development guidelines — REPL discipline, structure-aware editing, and style conventions.

Check `AGENTS.md` for coordination protocols.

---

## Internal Operations

These instructions are for internal development sessions only. They do NOT sync to beta repos via scaffold-manifest.

### Session Start: Worktree Isolation

**Before writing code**, create a worktree for this session using the `EnterWorktree` tool. Multiple Claude sessions may run concurrently against this repo. Without a worktree, agents collide — editing the same files, stepping on each other's git state, causing merge conflicts mid-session. A worktree gives each session an isolated copy of the repo on its own branch.

Name the worktree after the task or branch you're working on (e.g., `phase2-tests`, `fix-middleware`). If the session is for a specific feature branch, use that branch name.

After creating the worktree, confirm the branch with the user: "Created worktree on `{branch}`. Work here, or switch?"

### Session Start: Check Branch and North Star

**After worktree setup**, run `git branch --show-current` and surface it: "You're on `{branch}`. Work here, or switch?" Do not proceed until the user confirms the branch. Commits to the wrong branch waste work and create merge headaches.

**All MCP calls default to the current git branch.** Run `git branch --show-current` and pass the result as the `ref` parameter on every `aswritten/*` tool call — `compile`, `introspect`, `remember`, `stories`, etc. Never omit `ref` or let it default to `main`. The branch the repo is on IS the branch the tools should operate on.

**Always compile the worldview** (`aswritten/compile` with `layer=worldview`, `ref={current branch}`) regardless of session type — fresh, compaction resumption, or branch switch. Compilation grounds the session in collective memory. No exceptions. Do this immediately after confirming the branch.

**If this session follows a compaction**, the compaction summary IS the session context. It contains "Current Work", "Pending Tasks", and "Next Step" — resume from there. Do NOT re-derive context from the North Star or ask "what do you want to work on?" when the compaction summary already answers that. Compile, then continue the work.

**If this is a fresh session** (no compaction summary), compile the worldview and check for onboarding (per ASWRITTEN.md). Once that completes, check the backlog for the Local North Star document:

1. **Read the Local North Star** via `backlog/document_view` (doc-001)
2. **If focus lock is ACTIVE**: Surface the focus and deadline. Ask "Working on [focus], or switching?" Do not proceed with unrelated work without explicit override.
3. **If focus lock is INACTIVE**: Surface the top 3 from the priority stack. Ask "Which of these, or something else?"
4. **When the user asks about something off-stack**: Complete the request, but note which priority it displaces. Offer to update the stack if the shift is intentional.
5. **When work reveals a priority shift**: Suggest updating the Local North Star and/or committing a memory (which will regenerate the org-level `north-star.story`).

The Local North Star is tactical and founder-controlled. The compiled `north-star.story` in `docs/internal/north-star.md` is the strategic layer — it regenerates from collective memory when new memories are committed.

### Session Continuity Protocol

Complex tasks (workflow edits, graph analysis, multi-file refactors) routinely hit context limits. When autocompact fires, in-flight working state is lost and the next session starts from a summary that may miss critical details.

1. **At ~60% context usage**: Write progress notes to the relevant backlog task via `task_edit` with `notesAppend`. Include: what's done, what's pending, which files changed, key decisions made.
2. **Before any multi-step workflow edit**: Note the approach in the backlog task FIRST, then execute.
3. **Every commit**: Push immediately. Unpushed commits are invisible to the next session.
4. **Acceptance criteria**: Check off completed items as you go, not at the end.
5. **At ~75% context or when user says "retro"**: Run a session retrospective before closing out. Cover:
   1. **What worked well** — tool choices, task ordering, subagent usage, patterns that saved time
   2. **What didn't work** — wasted context, dead ends, wrong tool for the job, corrections from user
   3. **Proposed CLAUDE.md additions** — concrete prompt text for new instructions that would have prevented the problems or codified the wins. Present as diffs the user can approve.
   4. **Next session handoff** — verify task notes are current, acceptance criteria checked, all changes committed and pushed

#### What Goes in Task Notes vs Memories

- **Task notes** (backlog `notesAppend`): Session progress, file lists, pending items, technical decisions specific to the task. Ephemeral — consumed by the next session working on this task.
- **Memories** (aswritten/remember): Architecture decisions, design rationale, patterns that apply beyond a single task. Permanent — becomes part of collective memory graph.

### Code Verification Discipline

**Passing tests against mocks is not "working."** Code is unverified until tested against real infrastructure in a deployed environment. Do not describe code as done, working, or complete until it has been confirmed with the user in a real environment.

Verification stages (in order):
1. **Written** — code exists, may compile
2. **Tests pass** — unit/integration tests pass locally (against mocks or in-memory backends)
3. **Deployed** — running on a real environment (dev droplet, staging, etc.)
4. **Verified** — user has confirmed it works end-to-end against real services

Do not conflate stages. "Tests pass" is stage 2. When the user asks "is it working?" they mean stage 4. Be explicit about which stage you're at: "Tests pass locally but this hasn't been deployed or tested against real n8n yet."

### Spec-First Development

Introspect the domain first (per ASWRITTEN.md "Before You Work" instructions) to inform the spec. Every change requires a spec. If you're working from an existing spec, execute it. If no spec exists, writing one is the first task — not coding.

A spec covers three levels:

1. **Local** — What exactly changes and why. The files, the diff, the rationale for this approach over alternatives.
2. **Domain** — How the change fits into its subsystem. What else it touches, what assumptions it depends on, what it might break. Name the adjacent components.
3. **System** — The architectural implication. Does this set a precedent? Shift a pattern? Affect cost, performance, or consistency across the codebase?

If you cannot articulate all three levels, you do not understand the change well enough to make it.

Do not treat "small" changes as exempt. A one-line model swap is a decision about model selection strategy, eval baselines, prompt compatibility, and cost. The spec makes that visible.

Write the spec in the backlog task. If no task exists, create one. The spec persists — it is not a chat-level proposal that disappears on session end.

---

## Editing n8n Workflows

When modifying workflow JSON files in `workflows/`:

1. **Always bump `versionId`** - Generate a new UUID (`uuidgen`) and update the `versionId` field. The n8n instance only pulls changes when versionId changes.
2. **Commit the versionId change** - Include it in the same commit as your workflow edits.

Without a new versionId, the n8n instance will not pick up your changes.

### Workflow JSON Editing

The jsCode inside n8n workflow JSON is a single escaped string. The Edit tool cannot match patterns inside it. Use Python scripts to programmatically edit:

```python
import json, uuid
with open(path) as f:
    wf = json.load(f)
for node in wf["nodes"]:
    if node.get("name") == "Target Node":
        code = node["parameters"]["jsCode"]
        code = code.replace(old, new)
        node["parameters"]["jsCode"] = code
        break
wf["versionId"] = str(uuid.uuid4()).upper()
with open(path, 'w') as f:
    json.dump(wf, f, indent=2)
```

### n8n Development Workflow

**Branch strategy**: Work against `dev` branch, not `main`. The `dev` branch syncs with `dev.n8n.aswritten.ai`. Production (`main`) syncs automatically via GitHub Action — never manually deploy production.

**n8n URLs**:
- Production: `https://n8n.aswritten.ai` (syncs with `main` via GitHub Action on push)
- Dev: `https://dev.n8n.aswritten.ai` (syncs with `dev`, AI-mediated via this protocol)

**MCP API switching**: `.mcp.json` defines both `aswritten` (prod: `api.aswritten.ai`) and `aswritten-dev` (dev: `dev.api.aswritten.ai`). When switching between main and dev branches, update `enabledMcpjsonServers` in `.claude/settings.local.json` to match:
- On `dev` branch: `["aswritten-dev"]`
- On `main` branch: `["aswritten"]`
Then run `/mcp` to reconnect. This ensures `aswritten/remember`, `aswritten/compile`, etc. hit the correct environment.

**Dev branch hygiene**: `dev` must always be available for the next task. When stopping work that's not ready to merge to main:
1. Push WIP from `dev` to a named branch (e.g., `wip/single-node-extract`)
2. Reset `dev` to `main`: `git checkout dev && git reset --hard origin/main && git push --force-with-lease`
3. Now `dev` is clean for the next piece of work.

**Development loop** (AI-mediated dev sync):

Before pushing workflow changes to `dev`, always follow this protocol:

**Step 1 — Check for UI changes via API:**

Before pushing, do a non-forced pull (`{"force": false}`) to check state:
- **200 with empty array `[]`**: n8n is in sync with git. No UI changes. Safe to proceed — after pushing git changes, force-pull without asking.
- **200 with items**: n8n pulled successfully and returned what changed. Activate changed workflows.
- **409 with items**: n8n has local state that differs from git. Items show what conflicts. Ask the user to resolve before force-pulling.

Only ask the user about UI changes when you see a 409 with actual conflicts. Don't ask preemptively.

**Step 2 — Push + sync:**
```bash
git push origin dev

# Try non-forced pull first
RESPONSE=$(curl -s -o /tmp/pull_response.json -w "%{http_code}" \
  -X POST "https://dev.n8n.aswritten.ai/api/v1/source-control/pull" \
  -H "Content-Type: application/json" \
  -H "X-N8N-API-KEY: $N8N_DEV_API_KEY" \
  -d '{"force": false}')

if [ "$RESPONSE" = "409" ]; then
  echo "409 — dev n8n state differs from git. Ask user before force-pulling."
else
  cat /tmp/pull_response.json | jq .
  # Activate each changed workflow
  cat /tmp/pull_response.json | jq -r '
    if type == "array" then .[].id
    elif .workflows then .workflows[].id
    else empty
    end' 2>/dev/null | while read -r ID; do
    [ -z "$ID" ] && continue
    curl -s -X POST "https://dev.n8n.aswritten.ai/api/v1/workflows/$ID/activate" \
      -H "X-N8N-API-KEY: $N8N_DEV_API_KEY"
  done
fi
```

**If the pull returns 409:** The dev n8n database has state that differs from git. Show the user the conflict items and ask:

> "The dev n8n pull returned 409. These workflows have local changes: [list names]. Have you made changes in the dev n8n UI that you haven't pushed yet? If yes, push them from the UI first (Source Control → Push). If no, I'll force-pull to sync n8n with git."

If the user confirms no unpushed UI work, force-pull with `{"force": true}` and activate.

**Step 3 — Test:**
1. Open changed workflow in dev n8n UI, verify nodes render correctly
2. For LLM workflows: run the eval trigger, verify scores
3. For flows: trigger manually or via test webhook
4. For entrypoints: simulate the external event
5. Verify using Claude Chrome extension — read the execution log, check outputs
6. Merge to `main` only after dev testing passes (GitHub Action handles production sync)

**Deploying to production:**

Production deployment is fully automated. When workflow or skill changes are pushed (or merged) to `main`, the `n8n/sync` GitHub Action:
1. Force-pulls changes into `n8n.aswritten.ai` via API (overwrites any unpushed UI changes)
2. Activates each changed workflow

Production UI changes are transient — push them from the n8n UI immediately or they'll be overwritten on the next git deploy.

**Never rebase. Always merge.** Rebasing rewrites history, which requires force pushing. Force pushes break: the droplet's local clone (needs `reset --hard`), n8n's internal git clone (loses track, must disconnect/reconnect source control), deploy actions (SHAs change but code didn't, so path-based triggers don't fire), and any other session tracking the branch. Use `git merge main` to pull changes into dev, not `git rebase`. This applies to all branches, not just main.

**Loop prevention:** When you push from the n8n UI, n8n commits to `main` on GitHub, which would re-trigger the Action. The Action skips runs where the commit author is `scarlet@aswritten.ai` (the droplet's git config) to avoid this no-op loop.

### n8n Workflow Architecture: Pure Function Principles

**Core principle: Clojure architecture applied to n8n.** Pure functions, side effects at the edges in callers. See backlog doc-006 for the full reference.

**Folder taxonomy** (n8n folders map to architectural roles):

| Folder | Role | Contract |
|--------|------|----------|
| **Entrypoints** | Webhook/automation triggers | Receive external event → normalize → call a flow |
| **MCP** | Product interface (Claude Code, ChatGPT) | MCP trigger → delegate to flows/LLM |
| **Flows** | Orchestration sequences, state machines | Call pure functions → side effects at edges |
| **State** | compile, combined state | Params in → deterministic output (reads repo) |
| **LLM** | Thin LLM wrappers | Input JSON → LLM → structured output JSON. **No side effects.** Full eval harness. |
| **Repo** | CRUD | Explicit params → read/write result |
| **Comms** | Front API | Message + recipient → send → confirmation |
| **Helpers** | Pure data transforms | Input → output. No external calls. |

**When building or modifying n8n workflows:**

1. **Identify which folder the workflow belongs to.** If it mixes roles (e.g., an LLM call that also commits to git), split it.
2. **LLM workflows are pure functions.** Load skill → call LLM → return structured output. No branch creation, no commits, no notifications. The caller (a Flow) handles side effects.
3. **Every LLM workflow has an eval harness.** Eval trigger + judge chain for model comparison.
4. **Flows orchestrate.** They call LLM pure functions, Repo CRUD, and Comms — in sequence, with side effects explicitly at the edges.
5. **Code nodes in LLM workflows should be minimal glue** — data reshaping only, not business logic.

---

## Backlog and Task Management

Tasks span all domains: `product`, `infra`, `content`, `demo`, `beta`, `network`, `fundraise`, `sales`, `legal`. Use the Backlog.md MCP tools for all task operations.

- **Check priorities**: Read the Local North Star document (doc-001)
- **Filter by domain**: Use `task_list` with label filters
- **Create tasks**: Always assign a domain label and priority
- **Cross-domain awareness**: When completing a task, check if it unblocks tasks in other domains

**Deployment tracking via labels** (workaround until Notion migration, task-107): Backlog only supports To Do / In Progress / Done. Use labels to track where code actually is:
- `deployed:dev` — running on dev droplet
- `deployed:main` — merged to main / running in prod
- `verified` — confirmed working end-to-end by user

A task is not "Done" until it is `verified`. "Tests pass" is still "In Progress."

Collective memory lives in `.aswritten/`:
- `memories/*.md` - Source documents
- `tx/*.sparql` - RDF transactions
- Snapshots compile on push via GitHub Actions
