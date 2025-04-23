#!/bin/bash

# Fallback icon if no updates
default_icon=""

# Detect AUR helper or fallback to pacman
if command -v yay &> /dev/null; then
  aur_helper="yay"
  aur_updates=$(yay -Qua 2>/dev/null | wc -l)
elif command -v paru &> /dev/null; then
  aur_helper="paru"
  aur_updates=$(paru -Qua 2>/dev/null | wc -l)
elif command -v checkupdates &> /dev/null; then
  aur_helper="pacman"
  aur_updates=$(checkupdates 2>/dev/null | wc -l)
else
  echo "$default_icon"
  exit 0
fi

# Flatpak update count
flatpak_updates=0
if command -v flatpak &> /dev/null; then
  flatpak_updates=$(flatpak remote-ls --updates 2>/dev/null | wc -l)
fi

# Total updates
total_updates=$((aur_updates + flatpak_updates))

# Output result
if [ "$total_updates" -gt 0 ]; then
  echo " $total_updates"
  notify-send -u normal -i system-software-update "System Updates" "$total_updates updates are available."
else
  echo "$default_icon"
fi

# 🔄 Refresh package databases — no --noconfirm
if [ "$aur_helper" = "yay" ]; then
  yay -Syy >/dev/null 2>&1
elif [ "$aur_helper" = "paru" ]; then
  paru -Syy >/dev/null 2>&1
elif [ "$aur_helper" = "pacman" ]; then
  sudo pacman -Syy >/dev/null 2>&1
fi

# Refresh flatpak appstream data
if command -v flatpak &> /dev/null; then
  flatpak update --appstream -y --noninteractive >/dev/null 2>&1
fi
