#!/bin/sh

setxkbmap dvorak es &
sxhkd -m 1 &
numlockx on &
xsetroot -cursor_name left_ptr &
start-pulseaudio-x11 &
nitrogen --restore &
numlockx on &
copyq &
lxpolkit &
compton &
firefox &
thunderbird &
redshift-gtk &
polybar main &
deluge &
mpd &
Telegram &
(sleep 10 && tint2) &
