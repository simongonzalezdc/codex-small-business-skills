# Codex Small Business Skills

**Apache-2.0 Codex port of Anthropic's Small Business skills for owner-operators, consultants, agencies, and local businesses that want AI-assisted workflows for cash flow, invoices, CRM hygiene, customer support, marketing, hiring, and weekly operating rhythm.**

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/Codex%20skills-31-success.svg)](manifest.json)
[![Source](https://img.shields.io/badge/source-Anthropic%20knowledge--work--plugins-lightgrey.svg)](ATTRIBUTION.md)

## What is this?

This repository provides 31 ready-to-use AI agent skills (or "plugins") for [Codex](https://openai.com/index/introducing-codex/). They are ported from Anthropic's public `knowledge-work-plugins` repository and adapted for Codex's skill routing system. Each skill is a self-contained workflow designed to assist with a specific small business operational task, from generating cash flow reports to drafting customer complaint responses. They are designed to be practical, approval-gated tools that augment—not replace—the business owner's judgment.

## Features

*   **31 Specialized Skills:** Covers core business functions including finance, sales, customer support, HR, and marketing.
*   **Practical & Safe:** Skills pause for user approval before taking actions involving money, customers, contracts, or external publishing.
*   **Easy Installation:** A single script installs all skills to your local Codex environment.
*   **Codex-Native:** Skill directories and metadata are prefixed (`small-business-`) for correct routing within Codex.
*   **Well-Documented:** Each skill includes a `SKILL.md` with purpose, inputs, and workflow instructions.
*   **Open Source:** Distributed under the permissive Apache 2.0 license.

## Installation

### Prerequisites

*   A working installation of [Codex](https://github.com/openai/codex) (CLI or IDE integration).
*   `bash` and standard Unix utilities (`cp`, `chmod`, etc.).

### Install from Repository

Clone the repository and run the installer script:

```bash
git clone https://github.com/simon/codex-small-business-skills.git
cd codex-small-business-skills
./scripts/install-codex-skills.sh
```

This copies all skill directories into `~/.codex/skills/`.

### Custom Installation Path

Override the default location with the `CODEX_HOME` environment variable:

```bash
CODEX_HOME=/path/to/your/codex-home ./scripts/install-codex-skills.sh
```

### Dry Run

To see what would be copied without making changes:

```bash
DRY_RUN=1 ./scripts/install-codex-skills.sh
```

## Quick Start

After installation, start a Codex session and issue a prompt that should trigger a skill. Codex's routing will match your intent to the appropriate `small-business-*` skill.

**Example Prompts:**

1.  **Financial Health Check:**
    > "Help me understand whether I can make payroll this month."

2.  **Sales Operations:**
    > "Prioritize my small business leads from this spreadsheet."

3.  **Customer Support:**
    > "Draft a polite response to this angry customer complaint about a late delivery."

The skill will ask for necessary context (e.g., a CSV file, specific numbers, or a text description) and then guide you through the workflow, presenting outputs for your review and approval.

## Usage

This collection of skills is designed to be used on-demand within your Codex agent workflow. You invoke them through natural language prompts. Below are practical examples mapped to common business needs.

### Daily/Weekly Rhythm

*   **Monday Planning:** "What should I focus on this week? Review my open invoices and leads."
*   **Friday Review:** "Summarize what happened in my business this week, including cash flow changes."

### Finance & Operations

*   **Cash Flow Snapshot:** "Give me a cash flow snapshot for the next 30 days based on these pending invoices and recurring expenses."
*   **Month-End Close Prep:** "Help me prepare for month-end close. What documents do I need to gather?"
*   **Tax Season Organizer:** "Help me organize my receipts and expenses for the tax year."

### Sales & Marketing

*   **Lead Triage:** "Look at these 10 new leads from the contact form and tell me which one I should call first."
*   **Content Strategy:** "Suggest a content calendar for the next month focused on our new service offering."
*   **Review a Contract:** "Summarize the key obligations and payment terms in this vendor contract PDF."

### Customer & CRM

*   **CRM Cleanup:** "Help me identify and merge duplicate contacts in this CSV export from HubSpot."
*   **Customer Pulse Check:** "Analyze the sentiment of these recent support tickets and highlight any recurring themes."
*   **Handle a Complaint:** "Draft a professional response to this customer complaint, offering a 10% discount on their next order."

### Hiring & Team

*   **Job Post Builder:** "Create a job posting for a part-time bookkeeper, emphasizing flexibility."
*   **SMB Onboard:** "Generate an onboarding checklist for a new freelance graphic designer."

## FAQ

**Q: Do I need an Anthropic API key or Claude subscription to use these?**
**A:** No. These are *skill definitions* (prompts and workflows) that operate within your Codex environment. The underlying LLM is provided by the Codex runtime you have configured.

**Q: Are these skills officially supported by Anthropic or OpenAI?**
**A:** This is an **unofficial, community port**. It is derived from Anthropic's open-source `knowledge-work-plugins` repository and adapted for Codex. It is not endorsed by either company.

**Q: Can I modify the skills for my specific business?**
**A:** Yes. The Apache 2.0 license permits modification. We recommend copying a skill folder (e.g., `small-business-invoice-chase/`), renaming it, and editing the `SKILL.md` file. Please see the [CONTRIBUTING.md](CONTRIBUTING.md) guide.

**Q: What's the difference between `small-business-customer-pulse` and `small-business-customer-pulse-check`?**
**A:** They are separate skills from the original source repository, likely with slightly different focuses or input methods. Both are included as-is from the port. You can experiment to see which workflow you prefer.

**Q: Is my business data secure when using these skills?**
**A:** The skills run locally within your Codex environment. They are prompts that instruct the AI model. You should still follow your organization's security policies and never input highly sensitive credentials or PII directly into prompts. See our [Security Policy](SECURITY.md) for more.

## Contributing

Contributions are welcome! Whether it's fixing a typo in documentation, improving a skill's prompt, or adding a new small business skill.

1.  Please read our [Contributing Guidelines](CONTRIBUTING.md).
2.  For major changes, please open an issue first to discuss what you would like to change.
3.  The [SUBMISSION_KIT.md](docs/SUBMISSION_KIT.md) contains information for listing your skill in aggregators.

We follow a standard fork-and-pull request workflow.

## License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for the full text.

The Codex-specific modifications are documented in:
*   [LICENSE-REVIEW.md](LICENSE-REVIEW.md)
*   [CODEX_PORT_AUDIT_2026-06-02.md](CODEX_PORT_AUDIT_2026-06-02.md)

## Professional Advice Disclaimer

These skills are **workflow assistants**. They do not provide legal, tax, financial, accounting, employment, or HR advice. All outputs should be reviewed by the user. Always consult a qualified professional for decisions involving compliance, law, or significant financial commitments.

## Recommended GitHub Topics

`codex`, `codex-skills`, `claude-code`, `claude-plugin`, `ai-agents`, `small-business`, `smb`, `workflow-automation`, `business-automation`, `crm`, `cash-flow`, `apache-2-0`, `open-source`