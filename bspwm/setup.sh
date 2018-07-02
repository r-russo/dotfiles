#!/bin/sh

bspc config border_width         3
bspc config window_gap          10

bspc config split_ratio          0.6
bspc config borderless_monocle   true
bspc config gapless_monocle      true
bspc config focus_follows_pointer true

bspc config normal_border_color  "#44475a"
bspc config active_border_color  "#bd93f9"
bspc config focused_border_color  "#bd93f9"

bspc monitor -d term 2 3 misc 5 6 games chat mail www

bspc rule -a Firefox desktop=^10
bspc rule -a Thunderbird desktop=^9
bspc rule -a TelegramDesktop desktop=^8
bspc rule -a Steam desktop=^7
bspc rule -a Nitrogen state=floating
bspc rule -a Lxappearance state=floating
bspc rule -a Zathura state=tiled
bspc rule -a "GNU Octave" state=floating
