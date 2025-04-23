#!/bin/bash

# Icon setup
icon_updates=""
icon_none=""

# Detect update tool and get pacman + AUR updates
if command -v yay &> /dev/null; then
  pacman_updates=$(yay -Qua 2>/dev/null | wc -l)
elif command -v paru &> /dev/null; then
  pacman_updates=$(paru -Qua 2>/dev/null | wc -l)
elif command -v checkupdates &> /dev/null; then
  pacman_updates=$(checkupdates 2>/dev/null | wc -l)
else
  pacman_updates=0
fi

# Get flatpak updates
if command -v flatpak &> /dev/null; then
  flatpak_updates=$(flatpak update --appstream --assumeno 2>/dev/null | grep -cE '^\s+[-|•]')
else
  flatpak_updates=0
fi

# Total updates
total_updates=$((pacman_updates + flatpak_updates))

# Output
if [ "$total_updates" -gt 0 ]; then
  echo "$icon_updates $total_updates"
  notify-send -u normal -i system-software-update "System Updates" "$total_updates updates are available."
else
  echo "$icon_none"
fi
