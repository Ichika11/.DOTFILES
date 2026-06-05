#!/bin/bash
LAST=""
while true; do
    CURRENT=$(awww query 2>/dev/null | grep -oP '(?<=image: ).*')
    if [ -n "$CURRENT" ] && [ "$CURRENT" != "$LAST" ]; then
        wal -i "$CURRENT" --saturate 1.0 -n
        pywal-discord 2>/dev/null &
        LAST="$CURRENT"
    fi
    sleep 2
done
