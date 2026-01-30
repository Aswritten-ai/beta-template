# Getting Started with Collective Memory

This repository is connected to [aswritten.ai](https://aswritten.ai) for collective memory management.

**MCP Endpoint:** `https://n8n.aswritten.ai/mcp/APP_NAME`

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

### 2. Set Repository Secrets (Admin)

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

### 3. Write Your First Memory

Create a file like `.aswritten/memories/YYYY-MM-DD-topic.md`:

```markdown
# Topic Name

This document captures [what].

## Context

We chose [approach] because [reasoning].

## Key Decisions

- Decision 1: [what] because [why]
```

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
