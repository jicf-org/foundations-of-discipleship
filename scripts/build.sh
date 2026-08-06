#!/bin/bash

set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "$ROOT/releases"

echo "Building Foundations of Discipleship..."

pandoc \
"$ROOT/manuscript/00-front-cover.md" \
"$ROOT/manuscript/01-front-matter.md" \
"$ROOT/manuscript/02-table-of-contents.md" \
"$ROOT/manuscript/03-dedication.md" \
"$ROOT/manuscript/04-acknowledgements.md" \
"$ROOT/manuscript/05-foreword.md" \
"$ROOT/manuscript/06-how-to-use-this-workbook.md" \
"$ROOT/manuscript/part-1/"*.md \
"$ROOT/manuscript/part-2/"*.md \
"$ROOT/manuscript/part-3/"*.md \
"$ROOT/manuscript/part-4/"*.md \
"$ROOT/manuscript/appendices/"*.md \
--resource-path="$ROOT/manuscript:$ROOT/manuscript/part-1:$ROOT/manuscript/part-2:$ROOT/manuscript/part-3:$ROOT/manuscript/part-4:$ROOT/manuscript/appendices" \
--pdf-engine=xelatex \
-o "$ROOT/releases/Foundations-of-Discipleship.pdf"

echo
echo "Done."
echo
echo "PDF:"
echo "  $ROOT/releases/Foundations-of-Discipleship.pdf"
