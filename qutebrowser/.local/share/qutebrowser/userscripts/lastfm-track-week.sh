#!/usr/bin/env bash
last_monday=$(date -dlast-monday +%Y-%m-%d)
today=$(date +%Y-%m-%d)
echo "open https://last.fm/fr/user/diyod/library/tracks?from=$last_monday&to=$today&format=grid" >> "$QUTE_FIFO"
