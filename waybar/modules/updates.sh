#!/bin/bash

script_name=$(basename "$0")

# Count the instances
instance_count=$(ps aux | grep -F "$script_name" | grep -v grep | grep -v $$ | wc -l)

if [ $instance_count -gt 1 ]; then
    sleep $instance_count
fi

threshhold_green=0
threshhold_yellow=25
threshhold_red=100
install_platform=arch
updates=0

check_lock_files() {
    local pacman_lock="/var/lib/pacman/db.lck"
    local checkup_lock="${TMPDIR:-/tmp}/checkup-db-${UID}/db.lck"

    while [ -f "$pacman_lock" ] || [ -f "$checkup_lock" ]; do
        sleep 1
    done
}

case $install_platform in
    arch)
        check_lock_files
        if command -v yay &> /dev/null; then
            updates=$(yay -Qu 2>/dev/null | wc -l)
        elif command -v paru &> /dev/null; then
            updates=$(paru -Qu 2>/dev/null | wc -l)
        elif command -v checkupdates &> /dev/null; then
            updates=$(checkupdates 2>/dev/null | wc -l)
        fi
        ;;
    fedora)
        updates=$(dnf check-update -q | grep -c ^[a-z0-9])
        ;;
    *)
        updates=0
        ;;
esac

last_count_file="/tmp/.last-update-count"
last_updates=0
if [ -f "$last_count_file" ]; then
    last_updates=$(cat "$last_count_file" 2>/dev/null || echo 0)
fi

if [[ "$updates" =~ ^[0-9]+$ ]]; then
    if [ "$updates" -gt 0 ] && [ "$updates" -ne "$last_updates" ]; then
        if [ "$1" != "--check-only" ]; then
            notify-send -u normal -i system-software-update "System updates are available."
        fi
    fi
    printf "%s" "$updates" > "$last_count_file"

    css_class="green"
    if [ "$updates" -gt $threshhold_yellow ]; then css_class="yellow"; fi
    if [ "$updates" -gt $threshhold_red ]; then css_class="red"; fi

    if [ "$updates" -gt $threshhold_green ]; then
        printf '{"text": "%s", "alt": "%s", "tooltip": "Click to update your system", "class": "%s"}' "$updates" "$updates" "$css_class"
    else
        printf '{"text": "0", "alt": "0", "tooltip": "No updates available", "class": "green"}'
    fi
else
    echo '{"text": "!", "alt": "!", "tooltip": "Update check failed", "class": "red"}'
fi
