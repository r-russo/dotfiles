" General
set nocompatible
filetype off

if exists('py2') && has('python')
elseif has('python3')
endif

" Plugins
call plug#begin('~/.vim/plugged')
"Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'davidhalter/jedi-vim'
"Plug 'klen/python-mode'
"Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
call plug#end()

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

set guifont=Fira\ Mono\ 12
set guioptions=0

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
nnoremap j <Up>
nnoremap k <Down>
" unhighlight
nnoremap <silent> <C-l> :nohl<CR><C-l>

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
            \ :exec '!clear; python' shellescape(@%,1)<cr>
let python_highlight_all=1

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='bubblegum'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=5
let g:syntastic_python_checkers = ['flake8']

" latex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'general'
au FileType tex set spell
au FileType tex set textwidth=80

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

syntax on
colorscheme bubblegum-256-dark
