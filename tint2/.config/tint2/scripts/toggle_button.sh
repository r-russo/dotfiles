#!/bin/sh

# state="$(mpc | awk 'NR==2 {print $1}')"
state="$(playerctl status)"

if [[ $state == "Playing" ]]; then
    echo ""
else
    echo ""
fi
