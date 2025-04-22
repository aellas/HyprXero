#!/bin/bash

updates=$(checkupdates | wc -l)

if [ "$updates" -gt 0 ]; then
  icon=""
else
  icon=""
fi

echo "$icon"
