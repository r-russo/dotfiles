#!/bin/sh

source ~/.dzen/conf.sh

while true; do
    echo "$(python ~/.dzen/obtener_info.py `bspc control --get-status`)"
done | dzen2 -p -e 'onstart=upper' -fn $FN -bg $BG -fg $FG -h 14 -w 500 -x 710
