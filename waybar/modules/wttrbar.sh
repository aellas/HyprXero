#!/usr/bin/env bash

# Auto-detect city via IP geolocation
city=$(curl -s ipinfo.io/city)

# Use it directly as the location
WTTR_LOCATION="$city" wttrbar

