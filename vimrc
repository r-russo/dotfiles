set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'lervag/vimtex'
"Plugin 'chriskempson/base16-vim'
Plugin 'https://github.com/Lokaltog/vim-distinguished'

call vundle#end()

let python_highlight_all=1
syntax on

filetype indent plugin on
set modeline
set nu
set encoding=utf-8

set expandtab
set shiftwidth=4
set softtabstop=4

au Filetype python setl et ts=4 sw=4

set background=dark
colorscheme distinguished
