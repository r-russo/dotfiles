#!/bin/sh

DIR="$(pwd)/$(dirname $0)/.."

if [ ! -d "$HOME/.config" ]; then
    echo "$HOME/.config doesn't exist. Making dir..."
    mkdir $HOME/.config
fi

config_folders=("alacritty" "bspwm" "dunst" "mpv" "nvim" "openbox" \
    "polybar" "rofi" "startpage" "sxhkd" "tint2" "rclone")
home_configs=("compton.conf" "tmux.conf" "Xdefaults" "zshenv" "zshrc")

for folder in ${config_folders[@]}; do
    ln -sfvT $DIR/$folder $HOME/.config/$folder
done

for config in ${home_configs[@]}; do
    ln -sfvT $DIR/$config $HOME/.$config
done

ln -sfvT $DIR/zsh.d $HOME/.zsh.d
