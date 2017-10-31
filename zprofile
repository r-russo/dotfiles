typeset -U path
path=(~/bin $path[@])

(sleep 20 && xmodmap ~/.Xmodmap) &
