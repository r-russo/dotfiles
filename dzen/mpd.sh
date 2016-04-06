#!/bin/sh

source ~/.dzen/conf.sh

PISTA=`mpc | head -n1 | sed 's/- /\n/g'`
L=$(echo "$PISTA" | wc -l)

ESTADO=`mpc | head -n 2 | tail -n 1 | awk '{print $1}'`

W=$(python ~/.dzen/ancho.py "$PISTA" 8)

PORCENTAJE=`mpc | head -n2 | tail -n1 | awk '{print $4}' | tr -d '(%)'`
BAR=`echo -e "$PORCENTAJE" | gdbar -bg $BBG -fg $BFG -h 2 -w $(($W-20))`

if [ "$ESTADO" == "[playing]" ] || [ "$ESTADO" == "[paused]" ]; then
    echo -e "\n$PISTA\n\n$BAR" | dzen2 -e 'onstart=uncollapse;button1=exit' -fn $FN -bg $BG -fg $FG -x 1450 -y 24 -w $W -l $(($L + 3)) -ta c -sa c -p 3
fi
