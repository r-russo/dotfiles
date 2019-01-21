#!/bin/sh

DIR="$(pwd)/$(dirname $0)/.."

if [ ! -d "$HOME/.config" ]; then
    echo "$HOME/.config doesn't exist. Making dir..."
    mkdir $HOME/.config
fi

config_folders=("alacritty" "bspwm" "compton" "dunst" "mpv" "nvim" "openbox" \
    "polybar" "rofi" "sxhkd" "tint2" "tmux" "Xresources" "zsh")

cd $DIR
for folder in ${config_folders[@]}; do
	stow $folder
done
