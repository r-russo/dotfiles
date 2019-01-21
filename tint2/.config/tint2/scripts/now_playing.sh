#!/bin/sh

state="$(mpc | awk 'NR==2 {print $1}')"

if [[ $state == "[playing]" || $state == "[paused]" ]]; then
    echo "$(mpc | sed -n 1p | cut -c 1-64)"
fi
