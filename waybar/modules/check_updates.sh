#!/bin/bash

updates=$(checkupdates 2>/dev/null | wc -l)

if [ "$updates" -gt 0 ]; then
  icon=""
  notify-send "System Updates" "$updates updates are available."
else
  icon=""
fi

echo "$icon $updates"
