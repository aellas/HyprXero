#!/bin/bash

# Rofi menu
CHOICE=$(printf "🇺🇸 US\n🇬🇧 UK" | rofi -monitor -1 -dmenu -p "Select keyboard layout")

case "$CHOICE" in
  *US*)
    hyprctl switchxkblayout current 0
    notify-send "Keyboard Layout Switched" "🇺🇸 US"
    ;;
  *UK*)
    hyprctl switchxkblayout current 1
    notify-send "Keyboard Layout Switched" "🇬🇧 UK"
    ;;
  *)
    exit 1
    ;;
esac

