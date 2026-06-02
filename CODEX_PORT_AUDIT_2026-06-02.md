# Codex Port Audit - 2026-06-02

BLUF: the public preview was rebuilt from Anthropic's public Apache-2.0
`small-business` plugin source at version `0.3.0`.

## Checked

- Public source: `https://github.com/anthropics/knowledge-work-plugins`
- Source package: `small-business`
- Source version: `0.3.0`
- Source commit: `181c4f6ff5a246f776027dcd79e2b330b68bf3be`
- Upstream license: Apache License 2.0
- Preview root: `codex-public-preview`

## Findings

1. The public upstream package has 31 general Small Business skills.
2. The preview has all 31 skills with the expected `small-business-` Codex
   prefix.
3. Every preview `SKILL.md` frontmatter `name:` matches its prefixed directory.
4. The previous local Claude cache source (`0.2.1`) is superseded by the public
   upstream source (`0.3.0`).
5. The old local starter-only `reference/business-context-template.md` file was
   removed because it is not part of the public upstream package.
6. The preview now includes the upstream Apache-2.0 `LICENSE`.

## Modifications

- `skills/<name>` -> `skills/small-business-<name>`
- `name: <name>` -> `name: small-business-<name>`
- Added Codex installer and preview metadata.
- Excluded local private companion skills and private business materials.

## Validation

Validated after regeneration:

- skill count: 31
- JSON manifest parses
- installer dry run completes
- no Codex frontmatter mismatches
- no local path, private-name, or obvious secret-pattern scan hits
