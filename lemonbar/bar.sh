#!/bin/sh

. export_conf

~/.lemonbar/panel | lemonbar -p -n "status_bar" -f $FN -f $IFN -B $BG -F $FG | while read line; do eval "$line"; done 

wait
