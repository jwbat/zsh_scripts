#!/bin/zsh

if [ -z "$1" ]; then
    echo "Usage: m filename.md"
    return 1
fi

local_css="$SCRIPTS/dark.css"
tmp_dir=$(mktemp -d "${TMPDIR:-/tmp}/md_preview_XXXXXX")
tmp_html="$tmp_dir/preview.html"
title=$(print -D "$1")

# compiles Markdown to HTML, embedding custom dark theme instantly
# --embed-resources leaves zero external file dependencies
pandoc "$1" --standalone --embed-resources \
    --metadata title=$title \
    --css="$local_css" \
    -o "$tmp_html"

# change to 'xdg-open' on Linux
open -a Safari "$tmp_html"

exit 0
