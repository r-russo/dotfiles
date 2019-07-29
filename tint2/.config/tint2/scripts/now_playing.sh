#!/bin/sh

# state="$(mpc | awk 'NR==2 {print $1}')"
state="$(playerctl status)"

if [[ $state == "Playing" || $state == "Paused" ]]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"
fi
