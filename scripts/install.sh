#!/bin/sh

DOTFILES="$HOME/.dotfiles"

# Symlinks

rm -v ~/.conky
rm -v ~/.lemonbar
rm -v ~/.dzen
rm -v ~/.config/startpage
rm -v ~/.config/openbox
rm -v ~/.themes/Bordes
rm -v ~/.themes/Numix-mod2

ln -sfv "$DOTFILES/zshrc" ~/.zshrc
ln -sfv "$DOTFILES/zprofile" ~/.zprofile
ln -sfv "$DOTFILES/vimrc" ~/.vimrc
#ln -sfv "$DOTFILES/vim" ~/.vim

ln -sfv "$DOTFILES/emacs" ~/.emacs
#ln -sfv "$DOTFILES/emacs.d" ~/.emacs.d

ln -sfv "$DOTFILES/conky" ~/.conky
ln -sfv "$DOTFILES/lemonbar" ~/.lemonbar
ln -sfv "$DOTFILES/dzen" ~/.dzen

ln -sfv "$DOTFILES/tint2rc" ~/.config/tint2/tint2rc
ln -sfv "$DOTFILES/startpage" ~/.config/startpage
ln -sfv "$DOTFILES/openbox" ~/.config/openbox

ln -sfv "$DOTFILES/themes/Bordes" ~/.themes/Bordes
ln -sfv "$DOTFILES/themes/Numix-mod2" ~/.themes/Numix-mod2
