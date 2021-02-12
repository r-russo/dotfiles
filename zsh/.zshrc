autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search
autoload -U colors
colors
compinit
promptinit
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

setopt COMPLETE_ALIASES

zstyle ':completion:*' menu select

source ~/.zsh.d/aliases.zsh

# Antigen
source ~/.zsh.d/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme clean
antigen apply

# Window title
autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn '\e]2;%n@%m %1~\a'
}

function xterm_title_preexec () {
    print -Pn '\e]2;%n@%m %1~ %# '
    print -n "${(q)1}\a"
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi

if [ ! "$TMUX" = "" ]; then export TERM=xterm-256color; fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
