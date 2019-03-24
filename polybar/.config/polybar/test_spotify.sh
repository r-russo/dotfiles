#!/bin/sh

status="$(playerctl status)"
if [[ $status == "No players found" ]]; then
    return 1
else
    return 0
fi
