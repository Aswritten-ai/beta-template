# Getting Started with Collective Memory

This repository is connected to [aswritten.ai](https://aswritten.ai) for collective memory management.

## What is Collective Memory?

Collective memory captures organizational knowledge—decisions, context, and reasoning—in a structured format that AI assistants can understand and reference.

## How It Works

1. **Write memories**: Create markdown files in `.aswritten/memories/` documenting decisions, architecture, processes
2. **Automatic extraction**: GitHub Actions extract semantic triples from memories into the knowledge graph
3. **AI access**: Claude and other AI tools can compile and query the knowledge graph

## Quick Start

### 1. Write Your First Memory

Create a file like `.aswritten/memories/YYYY-MM-DD-topic.md`:

```markdown
# Topic Name

This document captures [what].

## Context

We chose [approach] because [reasoning].

## Key Decisions

- Decision 1: [what] because [why]
```

### 2. Set Repository Secrets

For GitHub Actions to work, set these repository secrets:
- `REPO_PAT`: A Personal Access Token with `contents:write` permission

And these repository variables:
- `N8N_WEBHOOK_BASE`: Your n8n webhook URL (ask your admin)

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
