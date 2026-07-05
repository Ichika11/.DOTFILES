#!/bin/bash

WALL_DIR="$HOME/wallpapers"

selected_path=$(find "$WALL_DIR" -maxdepth 1 -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.gif' -o -iname '*.png' -o -iname '*.webp' \) ! -name ".*" | shuf -n1)

if [ -f "$selected_path" ]; then
    quickshell ipc call randomwallpaper apply "$selected_path"
    awww img "$selected_path" --transition-type wipe --transition-duration 1
    wal -i "$selected_path" --saturate 1.0
fi

cp ~/.cache/wal/youtube.user.css /tmp/yt.tmp 2>/dev/null; mv /tmp/yt.tmp ~/.cache/wal/yt-stylus.user.css 2>/dev/null
