" General
set nocompatible
filetype off

if exists('py2') && has('python')
elseif has('python3')
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/indentpython.vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
Plug 'roxma/nvim-completion-manager'
Plug 'heavenshell/vim-pydocstring'
Plug 'nvie/vim-flake8'
Plug 'benmills/vimux'
Plug 'flazz/vim-colorschemes'
"Plug 'baskerville/bubblegum'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
call plug#end()

let g:python_host_prog = '/usr/bin/python'
let g:deoplete#sources#jedi#server_timeout = 120
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose

filetype plugin indent on
set modelines=0
set relativenumber
set number
set numberwidth=4
set ruler
set visualbell
set encoding=utf-8
set wrap
set backspace=indent,eol,start
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set colorcolumn=+1

set hidden
set ttyfast
set showcmd

set hlsearch
set showmatch
set listchars=trail:·
set list

set foldmethod=indent
set foldlevel=99
set spelllang=es

" keymaps
let mapleader = ","
let maplocalleader = ","
nnoremap <leader>w :%s/\s\+$//e <return>
" unhighlight
nnoremap <silent><C-l> :nohl<CR><C-l>
" insert
inoremap <C-s> <Esc>:w<CR>a

" python
let g:SimpylFold_docstring_preview=1
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
au FileType python nnoremap <buffer> <F5>
            \ :VimuxRunCommand('python ' . bufname("%"))<CR>
au FileType python nnoremap <buffer> <F17>
            \ :exec '!clear; python' shellescape(@%,1)<cr>
let python_highlight_all=1

" airline
set laststatus=2
"let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=0
"let g:airline_theme='base16_chalk'

" latex
let g:tex_flavor = 'latex'
" let g:vimtex_view_general_viewer = 'mupdf'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '--unique'
au FileType tex
            \ set spell |
            \ set textwidth=80 |
            \ inoremap ì <Esc>o\item |
            \ nnoremap <leader>p o<Esc>o\par 
au BufNewFile main.tex 0r ~/.vim/templates/latex
" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
map <Leader>c :VimuxInterruptRunner<CR>

syntax on
colorscheme bubblegum-256-dark
