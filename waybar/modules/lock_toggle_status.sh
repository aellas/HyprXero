#!/bin/bash
if [[ -f /tmp/disable-lock ]]; then
    echo "🔓 Lock Off"
else
    echo "🔒 Lock On"
fi

