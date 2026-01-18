#!/bin/bash

WALLPAPER_DIR="$HOME/wallpaper"

until awww query >/dev/null 2>&1; do
    sleep 0.5
done

while true; do
    IMG=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    awww img "$IMG" \
        --transition-type random \
        --transition-angle 30 \
        --transition-step 90 \
        --transition-fps 60
    sleep 300
done
