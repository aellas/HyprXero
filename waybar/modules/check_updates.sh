#!/bin/bash

# Get pacman updates
pacman_updates=$(checkupdates 2>/dev/null | wc -l)

# Get flatpak updates
if command -v flatpak &> /dev/null; then
  flatpak_updates=$(flatpak update --appstream --assumeno 2>/dev/null | grep -cE '^\s+[-|•]')
else
  flatpak_updates=0
fi

total_updates=$((pacman_updates + flatpak_updates))

if [ "$total_updates" -gt 0 ]; then
  echo " $total_updates"
  notify-send -u normal -i system-software-update "System Updates" "$total_updates updates are available."
else
  echo ""
fi
