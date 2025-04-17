#!/bin/bash
if [[ -f /tmp/disable-lock ]]; then
    rm /tmp/disable-lock
else
    touch /tmp/disable-lock
fi

