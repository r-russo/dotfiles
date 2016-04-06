#!/bin/sh

. ~/.lemonbar/conf.sh

~/.lemonbar/panel | lemonbar -p -f $FN -f $IFN -B $BG -F $FG | while read line; do eval "$line"; done 

wait
