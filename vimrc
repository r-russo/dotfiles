" General
set nocompatible
filetype off

if exists('py2') && has('python')
elseif has('python3')
endif

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
"Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on
set modelines=0
set relativenumber
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
highlight SpecialKey ctermfg=DarkGray
set listchars=trail:·
set list

set foldmethod=indent
set foldlevel=99

" keymaps
let mapleader = "\<space>"
noremap <space> za
nnoremap <leader>w :%s/\s\+$//e <return>
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

syntax on
colorscheme bubblegum-256-dark
