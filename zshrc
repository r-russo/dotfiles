source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    #zgen oh-my-zsh

    #zgen oh-my-zsh plugins/git
    #zgen oh-my-zsh plugins/sudo
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load subnixr/minimal
fi

# Alias
alias paci="pacaur -S"
alias pacs="pacman -Ss"
alias pacsa="pacaur -Ssa"
alias pacr="sudo pacman -R"
alias pacu="sudo pacman -Syu"
alias pacua="pacaur -Syua"

