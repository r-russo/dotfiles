typeset -U path
path=(~/.local/bin $path[@])
path=($(ruby -e 'puts Gem.user_dir')/bin $path[@])
export EDITOR=nvim
