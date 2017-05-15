#!/bin/sh

setxkbmap dvorak es &
sxhkd -m 1 &
xsetroot -cursor_name left_ptr &
start-pulseaudio-x11 &
nitrogen --restore &
numlockx on &
compton &
firefox &
thunderbird &
redshift &
polybar main &
deluge &
mpd &
Telegram &
tint2 &
