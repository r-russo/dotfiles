#!/bin/sh

source ~/.dzen/conf.sh

X=`xdotool getmouselocation | cut -d ' '  -f1 | tr -d 'x:'`
Y=`xdotool getmouselocation | cut -d ' '  -f2 | tr -d 'y:'`

PARAMS='onstart=uncollapse,hide;leaveslave=exit;button3=exit:13;'

LINES=5

(echo "^fg($ICONO) Menu^fg()"
 echo "matlab"
 echo "^ca(1,thunar)thunar^ca()") \
    | dzen2 -p -l $((LINES-1)) -m -e "$PARAMS" -x $X -y $Y -w 75 -fn "$FN" -bg "$BG" -fg "$FG"
