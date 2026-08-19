#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
theme_dir="$(cd -- "$script_dir/.." && pwd)"

command -v jq >/dev/null || {
  echo "Validation requires jq." >&2
  exit 1
}

manifest="$theme_dir/package.json"
jq -e '.contributes.themes | type == "array" and length > 0' "$manifest" >/dev/null

theme_count=0
while IFS= read -r relative_path; do
  theme_path="$theme_dir/${relative_path#./}"
  jq -e '.type == "dark" and (.colors | type == "object") and (.tokenColors | type == "array")' \
    "$theme_path" >/dev/null
  theme_count=$((theme_count + 1))
done < <(jq -r '.contributes.themes[].path' "$manifest")

echo "Validated $theme_count VS Code theme contribution."
