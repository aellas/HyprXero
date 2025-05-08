#!/bin/bash

# Get number of available updates
updates=$(checkupdates 2>/dev/null | wc -l)

# Output in JSON format for Waybar
echo "{\"text\": \"$updates\", \"tooltip\": \"$updates updates available\", \"class\": \"updates\"}"
