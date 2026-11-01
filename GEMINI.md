# Google Antigravity & Gemini Agent Instructions: Universal Blog OS

> **Universal Blog OS**: Harness-agnostic, open-source content creation, audit, and editorial intelligence engine.
> Tailored for **Google Antigravity (AGY)** with **Gemini models** (`gemini-2.5-pro`, `gemini-2.5-flash`),
> while remaining 100% interoperable across Claude Code, Cursor, Codex, Windsurf, and standalone CI/CD runners.

---

## 1. Antigravity & Gemini Integration

When running inside Google Antigravity, this repository serves as a multi-agent editorial and publishing engine.

### Antigravity Tools Mapping
| Claude Code Tool | Antigravity Tool | Purpose |
| :--- | :--- | :--- |
| `Read` | `read_file` | Read articles, briefs, research, style guides |
| `Write` | `write_file` | Generate drafts, outlines, structured briefs, social repurposing |
| `Edit` | `edit_file` | Polish prose, fix factual errors, insert schema markup |
| `Bash` | `run_command` | Execute analysis scripts (`analyze_blog.py`, `ai_citation_score.py`) |
| `SubAgent` | `invoke_subagent` | Launch specialist agents (`blog-writer`, `blog-reviewer`, `blog-researcher`) |

### Gemini Model Routing
- **Deep Editorial & Factchecking** (`blog-reviewer`, `blog-writer`, `blog-researcher`): Use `Model: 'pro'` (`gemini-2.5-pro`) or `'inherit'`.
- **Fast Content Extraction & Metrics** (`ai_citation_score.py`, `cognitive_load.py`, `lint_prose.py`): Use `Model: 'flash'` (`gemini-2.5-flash`) or `'flash_lite'`.

---

## 2. Core Capabilities & Skill Matrix

- **`blog-write` / `blog-outline`**: High-craft article drafting, narrative structure, hooking intro formulas.
- **`blog-geo` / `blog-factcheck`**: Generative Engine Optimization, AI citation scoring, fact triplet extraction for Gemini & ChatGPT.
- **`blog-notebooklm`**: Transform blog posts into NotebookLM audio overview scripts and executive study guides.
- **`blog-audit` / `blog-decay`**: Content freshness, decay monitoring, cannibalization audits.
- **`blog-schema`**: JSON-LD `Article`, `TechArticle`, `BlogPosting`, `Author`, and `BreadcrumbList` generation.

---

## 3. Installation into Antigravity

```bash
# Global installation (available to all projects in Antigravity)
bash scripts/install-antigravity.sh --global

# Project-local installation (into current workspace .agents/skills/)
bash scripts/install-antigravity.sh --local
```
