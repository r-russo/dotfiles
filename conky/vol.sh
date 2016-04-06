#!/bin/sh

MASTER=`amixer get Master | tail -n1 | awk '{print $5}' | tr -d '[%]'`
ESTADO=`amixer get Master | tail -n1 | awk '{print $6}' | tr -d '[]'`
if [ $ESTADO == "on" ]; then
    echo "\\\\x04$MASTER%\\\\x01"
else
    echo "\\\\x06--\\\\x01"
fi
