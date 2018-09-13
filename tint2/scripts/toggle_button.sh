#!/bin/sh

state="$(mpc | awk 'NR==2 {print $1}')"

if [[ $state == "[playing]" ]]; then
    echo ""
else
    echo ""
fi
