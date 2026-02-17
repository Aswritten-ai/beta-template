# Getting Started with Collective Memory

This repository is connected to [aswritten.ai](https://aswritten.ai) for collective memory management.

**MCP Endpoint:** `https://n8n.aswritten.ai/mcp/{GITHUB_REPO}`

## What is Collective Memory?

Collective memory captures organizational knowledge—decisions, context, and reasoning—in a structured format that AI assistants can understand and reference.

## How It Works

1. **Write memories**: Create markdown files in `.aswritten/memories/` documenting decisions, architecture, processes
2. **Automatic extraction**: GitHub Actions extract semantic triples from memories into the knowledge graph
3. **AI access**: Claude and other AI tools can compile and query the knowledge graph

## Quick Start

### 1. Connect Claude Code

Copy [.mcp.json](.mcp.json) to your project root or `~/.claude/mcp.json` for global access.

Restart Claude Code and verify tools appear: `mcp__aswritten__aswritten_compile`, etc.

### 2. Connect Claude.ai (Web)

To use collective memory in [Claude.ai](https://claude.ai) projects:

1. Go to Claude.ai and create a new **Project**
2. Open Project Settings → Custom Instructions
3. Copy the contents of [CLAUDE_INSTRUCTIONS.md](CLAUDE_INSTRUCTIONS.md) into the instructions field
4. Add MCP server configuration (requires Claude Pro):
   - Server URL: `https://n8n.aswritten.ai/mcp/{GITHUB_REPO}`

The custom instructions teach Claude the gap-aware collaboration workflow—introspecting collective memory, identifying gaps, and offering to save new knowledge.

### 3. Set Repository Secrets (Admin)

Required for extraction and content generation to work.

**Repository Secrets** (Settings → Secrets and variables → Actions → Secrets):
- `REPO_PAT`: A fine-grained Personal Access Token (see below)
- `OPENROUTER_API_KEY`: Your OpenRouter API key for LLM calls

**Creating the REPO_PAT:**
1. [Create a fine-grained token with pre-filled permissions](https://github.com/settings/personal-access-tokens/new?name=aswritten.beta&description=Collective+memory+extraction+and+content+generation&contents=write&actions=write&pull_requests=write&expires_in=none)
2. Under "Repository access", select "Only select repositories" and choose this repo
3. Click "Generate token" and copy it to your repository secrets

The link pre-fills:
- **Name**: aswritten.beta
- **Expiration**: No expiration
- **Contents**: Write (commit extracted triples and drafted stories)
- **Actions**: Write (view logs, re-run failed workflows, trigger runs)
- **Pull requests**: Write (create PRs for review workflows)

**Repository Variables** (Settings → Secrets and variables → Actions → Variables):
- `N8N_WEBHOOK_BASE`: Your n8n webhook URL (ask your admin)

### 4. Write Your First Memory

**Via Claude Desktop or Claude Code** (recommended):

Work with Claude on your project. When you make decisions worth preserving, Claude will offer to save them:

```
You: "Should we use PostgreSQL or MongoDB for the new service?"

Claude: "Let me check what's documented about your data architecture...
        [Introspects collective memory]

        I see your existing services use relational patterns with complex joins.
        Given that, PostgreSQL would align better. What's the team's experience
        with each?"

You: "More Postgres experience. Let's go with that."

Claude: "Good decision. This seems worth capturing for future context—should I
        save a memory about choosing PostgreSQL for its relational fit and
        team expertise?"

You: "Yes"

Claude: [Drafts and saves to .aswritten/memories/2026-02-03-postgresql-decision.md]
        "Saved. Extraction will run in a few minutes."
```

**Manual** (if needed):

Create a file like `.aswritten/memories/YYYY-MM-DD-topic.md` and commit it. GitHub Actions will process it automatically.

## GitHub Actions

These workflows run automatically:

| Workflow | Trigger | What it does |
|----------|---------|--------------|
| `memories/process` | Push to `.aswritten/memories/*` | Extracts semantic triples from memories into the knowledge graph |
| `stories/draft` | Push to `*.sparql` or `*.story` | Generates content from story templates using the knowledge graph |
| `sparql/validate` | Push to `*.sparql` | Validates SPARQL syntax in transaction files |

## Directory Structure

```
.aswritten/
├── manifest.json          # Tracks processed files
├── memories/              # Your knowledge documents
├── tx/                    # Auto-generated RDF transactions
├── stories/               # Content generation templates
└── GETTING-STARTED.md     # This file
```

## Need Help?

Visit [aswritten.ai/docs](https://aswritten.ai/docs) or reach out to your administrator.
