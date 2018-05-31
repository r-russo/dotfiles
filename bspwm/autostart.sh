#!/bin/sh

setxkbmap latam &
sxhkd -m 1 &
numlockx on &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
numlockx on &
lxpolkit &
compton &
firefox &
thunderbird &
redshift-gtk &
deluge &
mpd &
Telegram &
sonata &
#(sleep 10 && tint2) &
#(sleep 10 && xmodmap ~/.Xmodmap) &

