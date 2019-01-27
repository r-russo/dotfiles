#!/bin/sh

normal_border_color=$(xrdb -query | grep color0 | awk '{print $2}')
active_border_color=$(xrdb -query | grep foreground | awk '{print $2}')
focused_border_color=$(xrdb -query | grep foreground | awk '{print $2}')
presel_feedback_color=$(xrdb -query | grep color3 | awk '{print $2}')

bspc config border_width        4
bspc config window_gap          5
bspc config bottom_padding      30

bspc config split_ratio          0.6
bspc config borderless_monocle   true
bspc config gapless_monocle      true
bspc config focus_follows_pointer true

bspc config normal_border_color  "$normal_border_color"
bspc config active_border_color  "$active_border_color"
bspc config focused_border_color  "$focused_border_color"
bspc config presel_feedback_color  "$presel_feedback_color"

bspc monitor -d  2 3 4 5     

bspc rule -a Firefox desktop=^10 state=tiled
bspc rule -a Deluge desktop=^9
bspc rule -a TelegramDesktop desktop=^8
bspc rule -a Steam desktop=^7
bspc rule -a spotify desktop=^6
bspc rule -a Nitrogen state=floating center=true
bspc rule -a Lxappearance state=floating center=true
bspc rule -a Zathura state=tiled
bspc rule -a "GNU Octave" state=floating
bspc rule -a PCSX2 state=floating center=true
bspc rule -a URxvt:ipython state=floating
bspc rule -a Godot:* state=floating
