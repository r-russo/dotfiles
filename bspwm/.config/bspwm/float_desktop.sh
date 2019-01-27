#!/bin/bash

# change the desktop number here
FLOATING_DESKTOP_ID=$(bspc query -D -d '^10')

bspc subscribe node report | while read -a msg ; do
desk_id=${msg[2]}
wid=${msg[3]}
[ "$FLOATING_DESKTOP_ID" = "$desk_id" ] && bspc node "$wid" -t floating
done
