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
redshift &
mpd &
telegram-desktop &

polybar main &
