#!/usr/bin/env bash

# Path to your Hyprland keybinds
KEYBINDS_FILE="$HOME/.config/hypr/config/keybinds.conf"

# Check if the file exists
if [[ ! -f "$KEYBINDS_FILE" ]]; then
    notify-send "Keybinds file not found!" "$KEYBINDS_FILE"
    exit 1
fi

# Grab lines that look like keybinds
keybinds=$(grep -E '^\s*bind' "$KEYBINDS_FILE" | sed 's/^\s*//')

# Launch rofi to select a keybind
selected=$(echo "$keybinds" | rofi -dmenu -i -p "Hypr Keybinds")

# If user selected something, show it in a notification or copy to clipboard
if [[ -n "$selected" ]]; then
    notify-send "Hypr Keybind" "$selected"
    echo "$selected" | wl-copy 2>/dev/null || echo "$selected" | xclip -selection clipboard
fi

