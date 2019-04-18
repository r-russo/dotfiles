#!/bin/sh

setxkbmap latam &

if [ "$(hostname)" = "thinkpad" ]; then
    polybar main_laptop &
else
    polybar main &
    # firefox &
    redshift &
fi
sxhkd -m 1 &
numlockx on &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
numlockx on &
lxpolkit &
compton &
dunst &
wmname LG3D &
# deluge &
(sleep 4 && telegram-desktop) &
# mpd &
# ~/.config/bspwm/float_desktop.sh 10 &

xset s 1800 1800 &
xset dpms 1800 1800 3600 &
