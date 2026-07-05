#!/bin/bash
STATE="$HOME/.local/state/caelestia/wallpaper/path.txt"
LAST=""
while true; do
    CURRENT=$(cat "$STATE" 2>/dev/null)
    if [ -n "$CURRENT" ] && [ "$CURRENT" != "$LAST" ] && [ -f "$CURRENT" ]; then
        wal -n -i "$CURRENT" --saturate 1.0
        pywal-discord 2>/dev/null &
        LAST="$CURRENT"
    fi
    sleep 2
done
