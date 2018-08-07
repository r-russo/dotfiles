#!/bin/sh

DIR="$(pwd)/$(dirname $0)/.."

if [ ! -d "$HOME/.config" ]; then
    echo "$HOME/.config doesn't exist. Making dir..."
    mkdir $HOME/.config
fi

if [ ! -d "$HOME/.config/nvim" ]; then
    echo "$HOME/.config/nvim doesn't exist. Making dir..."
    mkdir $HOME/.config/nvim
fi

if [ ! -d "$HOME/.config/mpv" ]; then
    echo "$HOME/.config/mpv doesn't exist. Making dir..."
    mkdir $HOME/.config/mpv
fi

config_folders=("alacritty" "bspwm" "dunst" "mpv" "nvim" "openbox" \
    "polybar" "rofi" "startpage" "sxhkd" "tint2")
home_configs=("compton.conf" "tmux.conf" "Xdefaults" "zshenv" "zshrc")

for folder in ${config_folders[@]}; do
    ln -svT $DIR/$folder $HOME/.config/$DIR
done

for config in ${home_configs[@]}; do
    ln -svT $DIR/$config $HOME/.$config
done

ln -svT $DIR/zsh.d $HOME/.zsh.d
