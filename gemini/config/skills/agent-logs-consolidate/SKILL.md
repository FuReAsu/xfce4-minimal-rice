---
name: agent-logs-consolidate
description: >
  Consolidate and merge fragmented, step-by-step progress log files in .agent-files/log/ into clean, procedurally-numbered log files to eliminate log bloat. Use when user requests "consolidate logs", "merge log files", "clean up log bloat", or when session log files accumulate excessively.
---

# Agent Logs Consolidate Skill

This skill provides guidelines and procedures for auditing, merging, and consolidating progress log files in `.agent-files/log/` to keep project workspaces clean, readable, and free from log bloat.

## Principles

1. **Procedural Naming:** Log files must follow `01-topic.md`, `02-topic.md` naming conventions.
2. **Zero Loss of Context:** Merging logs must preserve all critical user requests, key decisions, reasoning steps, tool actions, and output artifact paths.
3. **Bloat Reduction:** Delete intermediate step-by-step micro logs once their details are safely merged into the consolidated procedural log.

## Workflow

### 1. Audit Existing Logs
Inspect `.agent-files/log/` to list all existing markdown log files for the current workspace/session.

### 2. Extract & Summarize
For each step-by-step log:
- **User Prompt:** The exact user request or context.
- **Reasoning & Strategy:** Key technical decisions, trade-offs, and tool choices.
- **Actions Taken:** Exact files modified, created, or deleted.
- **Outputs Produced:** Paths to generated non-code output files in `.agent-files/out/`.

### 3. Generate Consolidated Log File
Group related micro-steps into a single procedurally-numbered log file (e.g. `02-linkedin-post-generation.md`).

Structure the consolidated file as follows:
```markdown
# Session: <Topic/Task Name>
**Topic:** <Short description of overarching goal>

## 1. Overview Table
| Step | User Request / Task | Key Focus | Output Files |
|---|---|---|---|
| 01 | ... | ... | ... |

## 2. Detailed Task Breakdown & Reasoning
### Step 01: <Title>
- **User Request:** ...
- **Reasoning & Actions:** ...

## 3. Final Outputs Summary
- List of final deliverables created in `.agent-files/out/`
```

### 4. Clean Up Fragmented Logs
Remove the intermediate step-by-step micro-log files that were merged, leaving only the clean, consolidated procedural log files (e.g., `01-analyze-and-plan.md`, `02-linkedin-post-generation.md`).
