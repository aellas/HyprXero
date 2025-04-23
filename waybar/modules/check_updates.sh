#!/bin/bash

# Detect yay or paru
if command -v yay &> /dev/null; then
  aur_helper="yay"
elif command -v paru &> /dev/null; then
  aur_helper="paru"
else
  echo ""  # no AUR helper
  exit 1
fi

# Get pacman + AUR update count (yay/paru -Qua includes AUR)
aur_updates=$($aur_helper -Qua 2>/dev/null | wc -l)

# Flatpak updates
flatpak_updates=0
if command -v flatpak &> /dev/null; then
  flatpak_updates=$(flatpak remote-ls --updates 2>/dev/null | wc -l)
fi

# Total
total_updates=$((aur_updates + flatpak_updates))

# Output
if [ "$total_updates" -gt 0 ]; then
  echo " $total_updates"
  notify-send -u normal -i system-software-update "System Updates" "$total_updates updates are available."
else
  echo ""
fi

# Refresh DBs silently for next time
$aur_helper -Sy --noconfirm >/dev/null 2>&1
if command -v flatpak &> /dev/null; then
  flatpak update --appstream -y --noninteractive >/dev/null 2>&1
fi
