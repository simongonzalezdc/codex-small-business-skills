# Codex Small Business Skills

> Codex Small Business Skills is a Codex-oriented skill pack for small-business operations that helps operators using Codex for SMB workflows run small-business recipes (CRM, cash, content) via Codex skills.

**TL;DR:** Codex Small Business Skills — Codex-oriented skill pack for small-business operations. Best for operators using Codex for SMB workflows.

Apache-2.0 Codex port of Anthropic's Small Business skills for owner-operators,
consultants, agencies, and local businesses that want AI-assisted workflows for
cash flow, invoices, CRM hygiene, customer support, marketing, hiring, and
weekly operating rhythm.

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/Codex%20skills-31-success.svg)](manifest.json)
[![Source](https://img.shields.io/badge/source-Anthropic%20knowledge--work--plugins-lightgrey.svg)](ATTRIBUTION.md)

## Why This Exists

Anthropic released a strong set of Small Business plugin workflows for Claude.
This repository makes those workflows easy to install as Codex skills, using the
`small-business-` prefix expected by Codex skill routing.

Use it when you want AI agents to help a small business owner with practical,
approval-gated work:

- cash-flow snapshots and payroll readiness
- overdue invoice follow-up drafts
- month-end close prep and tax-season organization
- lead prioritization and call lists
- CRM cleanup and customer pulse checks
- complaint response drafting
- content strategy and campaign planning
- hiring packets and contract review support

## Keywords

Codex skills, Claude Code skills, Claude plugin port, small business AI agents,
AI workflow automation, SMB automation, owner-operator tools, business pulse,
cash flow forecast, invoice chase, CRM cleanup, customer support automation,
lead triage, content strategy, Apache-2.0 AI skills.

## Source

This port is derived from Anthropic's public `knowledge-work-plugins`
repository:

- Source repository: `https://github.com/anthropics/knowledge-work-plugins`
- Source package: `small-business`
- Source version: `0.3.0`
- Source commit used: `181c4f6ff5a246f776027dcd79e2b330b68bf3be`
- Source license: Apache License 2.0
- Codex preview regenerated: `2026-06-02`

## What Changed From Upstream

- Copied the public `small-business/skills/*` folders into this Codex preview.
- Renamed each skill directory with the `small-business-` prefix.
- Rewrote each `SKILL.md` frontmatter `name:` field to match the Codex-prefixed
  directory name.
- Added Codex-focused wrapper files: installer, manifest, audit, and license
  notes.

No private local companion skills, business context, lead queues, CRM exports,
credentials, logs, or generated work products are included.

## License

This project is distributed under Apache License 2.0. See [LICENSE](LICENSE).

Apache-2.0 permits use, modification, and redistribution, subject to the license
terms. The Codex-specific modifications are documented in
[LICENSE-REVIEW.md](LICENSE-REVIEW.md) and
[CODEX_PORT_AUDIT_2026-06-02.md](CODEX_PORT_AUDIT_2026-06-02.md).

Anthropic, Claude, Codex, QuickBooks, HubSpot, Canva, PayPal, Stripe, Square,
DocuSign, Google, Microsoft, Slack, Shopify, and Teams are used descriptively.
This port is unofficial and is not endorsed by Anthropic unless Anthropic says
otherwise.

## Install Locally

From this folder:

```bash
./scripts/install-codex-skills.sh
```

By default this copies skills into:

```text
~/.codex/skills
```

Override the destination with `CODEX_HOME`:

```bash
CODEX_HOME=/tmp/codex-home ./scripts/install-codex-skills.sh
```

Dry run:

```bash
DRY_RUN=1 ./scripts/install-codex-skills.sh
```

## Quick Test

After installation, ask Codex something that should trigger one of the skills:

```text
Prioritize my small business leads.
```

or:

```text
Help me understand whether I can make payroll this month.
```

Codex should route to a `small-business-*` skill and ask for whatever connector,
file, or CSV context is needed. The skills are designed to pause before actions
that touch customers, money, contracts, CRM records, or external publishing.

## Included Skills

This preview includes 31 Codex-prefixed skills:

- `small-business-business-pulse`
- `small-business-call-list`
- `small-business-canva-creator`
- `small-business-cash-flow-snapshot`
- `small-business-close-month`
- `small-business-content-strategy`
- `small-business-contract-review`
- `small-business-crm-cleanup`
- `small-business-crm-maintenance`
- `small-business-customer-pulse`
- `small-business-customer-pulse-check`
- `small-business-friday-brief`
- `small-business-handle-complaint`
- `small-business-invoice-chase`
- `small-business-job-post-builder`
- `small-business-lead-triage`
- `small-business-margin-analyzer`
- `small-business-monday-brief`
- `small-business-month-end-prep`
- `small-business-month-heads-up`
- `small-business-plan-payroll`
- `small-business-price-check`
- `small-business-quarterly-review`
- `small-business-review-contract`
- `small-business-run-campaign`
- `small-business-sales-brief`
- `small-business-smb-onboard`
- `small-business-smb-router`
- `small-business-tax-prep`
- `small-business-tax-season-organizer`
- `small-business-ticket-deflector`

## Professional Advice Disclaimer

These skills assist with workflows. They do not provide legal, tax, financial,
accounting, employment, or HR advice. Review outputs yourself and consult a
qualified professional where appropriate.

## Discoverability

Recommended GitHub topics for this repository:

`codex`, `codex-skills`, `claude-code`, `claude-plugin`, `ai-agents`,
`small-business`, `smb`, `workflow-automation`, `business-automation`,
`crm`, `cash-flow`, `apache-2-0`, `open-source`

See [docs/SUBMISSION_KIT.md](docs/SUBMISSION_KIT.md) for launch copy,
directory targets, and submission assets.

<!-- s-plus-geo:start -->

## What is Codex Small Business Skills?

**Codex Small Business Skills** is a **Codex-oriented skill pack for small-business operations** that helps **operators using Codex for SMB workflows** **run small-business recipes (CRM, cash, content) via Codex skills**.

| | |
| --- | --- |
| **Product** | Codex Small Business Skills |
| **Category** | Codex-oriented skill pack for small-business operations |
| **Best for** | operators using Codex for SMB workflows |
| **Not** | a full accounting suite |
| **Source** | [GitHub](https://github.com/simongonzalezdc/codex-small-business-skills) · [Forgejo](https://git.kyanitelabs.tech/simon/codex-small-business-skills) |
| **Keywords** | Codex SMB skills, small business agent skills |

## Who it's for

- Primary: operators using Codex for SMB workflows
- Use when you need to run small-business recipes (CRM, cash, content) via Codex skills
- Skip if you need a full accounting suite

## FAQ

### What is Codex Small Business Skills?

Codex Small Business Skills is a Codex-oriented skill pack for small-business operations. It helps operators using Codex for SMB workflows run small-business recipes (CRM, cash, content) via Codex skills.

### Who should use Codex Small Business Skills?

operators using Codex for SMB workflows.

### How is Codex Small Business Skills different?

Skills pack for agents — not QuickBooks itself.

### Is Codex Small Business Skills production software?

Treat the README status and release tags as source of truth for maturity. Validate against your own requirements before production use.

## Status

- Maintained as of 2026 on the default branch
- Prefer release tags when pinning dependencies
- Report issues on the canonical remote listed above

## Agent surface

- Coding agents: read this README first, then repo docs/`AGENTS.md` if present
- Prefer machine-readable briefs (`llms.txt`) when the repo ships one
- MCP or skill entrypoints are documented in-repo when applicable

## Contributing

Issues and PRs welcome on the canonical remote. Keep public docs free of secrets and machine-local paths.

## License

See [LICENSE](LICENSE) in this repository (or package metadata if license is package-only).

<!-- s-plus-geo:end -->
