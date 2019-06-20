#!/usr/bin/env bash
last_year=$(date +%Y-01-01)
today=$(date +%Y-%m-%d)
echo "open https://last.fm/fr/user/diyod/library/artists?from=$last_year&to=$today&format=grid" >> "$QUTE_FIFO"
