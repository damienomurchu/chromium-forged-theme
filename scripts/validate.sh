#!/usr/bin/env sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$project_dir"

python3 -m json.tool manifest.json >/dev/null

for size in 16 32 48 128; do
  test -f "icons/icon-${size}.png"
  dimensions=$(identify -format '%wx%h' "icons/icon-${size}.png")
  test "$dimensions" = "${size}x${size}"
done

if rg -n '"(permissions|host_permissions|background|content_scripts|web_accessible_resources)"' manifest.json; then
  echo "Unexpected extension capability found in manifest.json" >&2
  exit 1
fi

echo "Forged Dark manifest and icons are valid."
