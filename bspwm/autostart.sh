#!/bin/sh

setxkbmap latam &
if [ "$HOST" = "thinkpad" ]; then
    sxhkd -m 1 -c ~/.config/sxhkd/sxhkd-laptop &
    polybar main_laptop &
else
    sxhkd -m 1 &
    polybar main &
    firefox &
    redshift &
    nextcloud &
fi
numlockx on &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
numlockx on &
lxpolkit &
compton &
# thunderbird &
mpd &
telegram-desktop &

xset s 1800 1800 &
xset dpms 1800 1800 3600 &

