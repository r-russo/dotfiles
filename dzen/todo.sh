#!/bin/sh

source ~/.dzen/conf.sh
N=`todo -l`
if ! [ $N -eq 0 ]; then
    SALIDA=$(todo | awk -v b=$BLANCO -v r=$ROJO '{print " >^fg("b") "  $0 "       ^p(_RIGHT)^p(-20)^fg("r")^ca(1,todo -d "NR")x^ca()"}')
    N=$(echo $N-1 | bc)
    echo "$SALIDA" | dzen2 -p -l $N -ta l -sa l -fn $FN -bg $BG -x 1050 -y 16 -w 500 -e 'onstart=uncollapse;button1=exit'
else
    echo "^fg($VERDE)¡Nada para hacer! (n_n)b" | dzen2 -p -l $N -ta c -sa c -fn $FN -bg $BG -x 1175 -y 16 -w 250 -e 'onstart=uncollapse;button1=exit'
fi
