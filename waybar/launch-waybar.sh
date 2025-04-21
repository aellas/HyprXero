#!/usr/bin/env bash

# Path to configs
WAYBAR_CONFIG_DIR="$HOME/.config/waybar"
LAPTOP_CONFIG="$WAYBAR_CONFIG_DIR/laptop/config"
DESKTOP_CONFIG="$WAYBAR_CONFIG_DIR/config"
STYLE="$WAYBAR_CONFIG_DIR/style.css"
STYLE2="$WAYBAR_CONFIG_DIR/laptop/style.css"

# Detect battery (i.e., laptop)
if ls /sys/class/power_supply/ | grep -qi 'BAT'; then
    echo "Laptop detected. Starting Waybar with laptop config."
    waybar -c "$LAPTOP_CONFIG" -s "$STYLE2" &
else
    echo "Desktop detected. Starting Waybar with desktop config."
    waybar -c "$DESKTOP_CONFIG" -s "$STYLE" &
fi

