#!/bin/sh

status="$(playerctl status)"

if [[ $status == "Playing" ]]; then
    echo " "
elif [[ $status == "Paused" ]]; then
    echo " "
else
    echo ""
fi
