#!/bin/bash

# Icons
icon_updates=""
icon_none=""

# Detect AUR helper and count updates
if command -v yay &> /dev/null; then
  updates=$(yay -Qu 2>/dev/null | wc -l)
elif command -v paru &> /dev/null; then
  updates=$(paru -Qu 2>/dev/null | wc -l)
elif command -v checkupdates &> /dev/null; then
  updates=$(checkupdates 2>/dev/null | wc -l)
else
  updates=0
fi

# Output and notify
if [ "$updates" -gt 0 ]; then
  echo "$icon_updates $updates"
  notify-send -u normal -i system-software-update "System Updates" "$updates updates are available."
else
  echo "$icon_none"
fi
