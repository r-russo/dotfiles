# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completando %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SEn %p: pulsa TAB para más o el caracter a insertar%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SSelección actual: %p%s
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '/home/russo/.zshrc'

autoload -U compinit promptinit colors
compinit
promptinit
colors
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile0
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install

#PROMPT="%{$fg_no_bold[green]%}%n %{$fg_bold[white]%}%~ %{$fg_no_bold[magenta]%}> %{$reset_color%}"
PROMPT="%B%F{green}%n%f %F{blue}%~%f%b %F{yellow}>%f " 
          
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key

key[Home]=${terminfo[khome]}

key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' "${terminfo[smkx]}"
    }
    function zle-line-finish () {
        printf '%s' "${terminfo[rmkx]}"
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

[[ -n "${key[Up]}"      ]] && bindkey  "${key[Up]}"      history-beginning-search-backward
[[ -n "${key[Down]}"    ]] && bindkey  "${key[Down]}"    history-beginning-search-forward

## This sets the window title to the last run command. ##
[[ -t 1 ]] || return
case $TERM in
       *xterm*|*rxvt*|(dt|k|E|a)term)
#    xterm|rxvt-unicode-256color)
    preexec () {
    print -Pn "\e]2;[%l] [%n@%m] <$1>\a"        # (1)
#    print -Pn "\e]2;$1\a"                      # (2)
#    print -Pn "\e\"$1\e\134"                   # (3) copied from screen*), does not work
    }
    ;;
    screen*)
        preexec () {
        # this doesn't do anything... *wah*
        #print -Pn "\e\"[screen] [%l] [%n@%m] <$1>\e\134"
        print -Pn "\e\"$1\e\134"                # (4) works also nicely with tmux
    }
  ;; 
esac

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nano='nano -w'
alias wine32='WINEARCH=win32 WINEPREFIX=~/.wine32 wine'

export PANEL_FIFO="/tmp/panel-fifo"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

export EDITOR=vim
