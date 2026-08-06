#!/bin/bash

set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "$ROOT/releases"

pandoc \
--metadata-file styles/metadata.yaml \
--pdf-engine=xelatex \
"$ROOT/manuscript/part-1/chapter-01-seeking-god.md" \
--resource-path="$ROOT/manuscript/part-1" \
--pdf-engine=xelatex \
-o "$ROOT/releases/chapter-01-seeking-god.pdf"

echo
echo "Done."
