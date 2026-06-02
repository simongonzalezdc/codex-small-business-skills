# Apache-2.0 License Notes

BLUF: this preview now includes the upstream Apache License 2.0 file and is
intended to be publishable under Apache-2.0, subject to final review.

## Upstream

- Source: `https://github.com/anthropics/knowledge-work-plugins`
- Package: `small-business`
- Version: `0.3.0`
- Commit used: `181c4f6ff5a246f776027dcd79e2b330b68bf3be`
- Upstream author metadata: Anthropic
- Upstream license: Apache License 2.0

## Modifications In This Port

- Skill directories are renamed from `skills/<name>` to
  `skills/small-business-<name>`.
- Each `SKILL.md` frontmatter `name:` is changed to the Codex-prefixed skill
  name.
- Codex install and metadata files are added.
- Private local companion skills and private business data are excluded.

## Compliance Checklist

- [x] Include Apache-2.0 license text as `LICENSE`.
- [x] Identify upstream source and commit.
- [x] Document modifications.
- [x] Avoid implying Anthropic endorsement.
- [x] Keep trademark references descriptive.
- [x] Include professional-advice disclaimer for legal, tax, finance, accounting,
  employment, and HR workflows.

## Remaining Human Review

Before public release, review repository naming, README wording, and package
metadata to ensure the fork is clearly unofficial and does not imply Anthropic
endorsement.
