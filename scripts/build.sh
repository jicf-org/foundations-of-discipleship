#!/bin/bash

pandoc \
manuscript/00-front-cover.md \
manuscript/01-front-matter.md \
manuscript/02-table-of-contents.md \
manuscript/03-dedication.md \
manuscript/04-acknowledgements.md \
manuscript/05-foreword.md \
manuscript/06-how-to-use-this-workbook.md \
manuscript/part-1/*.md \
manuscript/part-2/*.md \
manuscript/part-3/*.md \
manuscript/part-4/*.md \
manuscript/appendices/*.md \
-o releases/Foundations-of-Discipleship.docx
