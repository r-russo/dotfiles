#!/bin/sh

MASTER=`amixer get Master | tail -n1 | awk '{print $5}' | tr -d '[%]'`
ESTADO=`amixer get Master | tail -n1 | awk '{print $6}' | tr -d '[]'`
if [ $ESTADO == "on" ]; then
    echo '{"full_text": "'$MASTER'%", "color": "#91DE87"},'
else
    echo '{"full_text": "--", "color": "#DE8788"},'
fi
