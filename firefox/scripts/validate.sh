#!/usr/bin/env sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$project_dir"

python3 -m json.tool manifest.json >/dev/null

python3 - <<'PY'
import json
import xml.etree.ElementTree as ET
from pathlib import Path

manifest = json.loads(Path("manifest.json").read_text(encoding="utf-8"))
assert manifest["manifest_version"] == 3
assert manifest["theme"]["colors"]
assert manifest["theme"]["properties"]["color_scheme"] == "dark"
assert manifest["theme"]["properties"]["content_color_scheme"] == "dark"

header = Path(manifest["theme"]["images"]["theme_frame"])
assert header.is_file()
ET.parse(header)
PY

if rg -n '"(permissions|host_permissions|background|content_scripts|web_accessible_resources)"' manifest.json; then
  echo "Unexpected extension capability found in manifest.json" >&2
  exit 1
fi

echo "Forged Dark Firefox manifest and artwork are valid."
