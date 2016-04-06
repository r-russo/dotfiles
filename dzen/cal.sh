#!/bin/sh

source ~/.dzen/conf.sh

MES=`date +%m`
ANO=`date +%Y`

CAL="$(cal $MES $ANO)"
L=`echo -e "$CAL" | wc -l`

HOY=`date +"Hoy es %A, %d de %B"`

W=$(python ~/.dzen/ancho.py "$HOY" 8)

if [ $W -lt 150 ]; then
    W=150
fi

X=$(python -c "print(1765 - $W + 150)")

echo -e "^fg(#FFFFFF)$HOY^fg()\n\n$CAL" | dzen2 -e 'onstart=uncollapse;button3=exec:orage;button1=exit' -fn $FN -bg $BG -fg $FG -x $X -y 24 -w $W -l $((L + 1)) -ta c -sa c -p
