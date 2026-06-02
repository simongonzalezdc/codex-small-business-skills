#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_SKILLS="$REPO_ROOT/skills"
DEST_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
DRY_RUN="${DRY_RUN:-0}"

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  cat <<'USAGE'
Install this preview's Codex skills into ~/.codex/skills.

Usage:
  ./scripts/install-codex-skills.sh

Environment:
  CODEX_HOME=/path/to/codex-home  Override Codex home. Default: ~/.codex
  DRY_RUN=1                       Print intended installs without copying.
USAGE
  exit 0
fi

if [[ ! -d "$SOURCE_SKILLS" ]]; then
  echo "Missing source skills directory: $SOURCE_SKILLS" >&2
  exit 1
fi

mkdir -p "$DEST_ROOT"

count=0
for source_dir in "$SOURCE_SKILLS"/*; do
  [[ -d "$source_dir" ]] || continue

  skill_name="$(basename "$source_dir")"
  skill_file="$source_dir/SKILL.md"
  dest_dir="$DEST_ROOT/$skill_name"

  if [[ ! -f "$skill_file" ]]; then
    echo "Skipping $skill_name: SKILL.md is missing" >&2
    continue
  fi

  if ! grep -Eq "^name:[[:space:]]+$skill_name$" "$skill_file"; then
    echo "Refusing to install $skill_name: SKILL.md name does not match directory" >&2
    exit 1
  fi

  if [[ "$DRY_RUN" == "1" ]]; then
    echo "Would install $skill_name -> $dest_dir"
  else
    rsync -a --delete "$source_dir/" "$dest_dir/"
    echo "Installed $skill_name"
  fi
  count=$((count + 1))
done

if [[ "$DRY_RUN" == "1" ]]; then
  echo "Dry run complete: $count Codex skills would be installed into $DEST_ROOT"
else
  echo "Installed $count Codex skills into $DEST_ROOT"
fi
