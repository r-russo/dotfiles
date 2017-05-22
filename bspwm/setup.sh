#!/bin/sh

bspc config border_width         2
bspc config window_gap          12
bspc config top_padding         24

bspc config split_ratio          0.54
bspc config borderless_monocle   true
bspc config gapless_monocle      true
bspc config focus_follows_pointer true

bspc config normal_border_color  "#9fb1b8"
bspc config active_border_color  "#dcf5ff"
bspc config focused_border_color "#dcf5ff"

bspc monitor -d term · · misc · · games chat mail www

bspc rule -a Firefox desktop=^10
bspc rule -a Thunderbird desktop=^9
bspc rule -a Steam desktop=^7 state=floating
bspc rule -a TelegramDesktop desktop=^8
bspc rule -a Nitrogen state=floating
bspc rule -a Lxappearance state=floating
bspc rule -a Ahoviewer state=floating
bspc rule -a Zathura state=tiled
