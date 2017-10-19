" General
set nocompatible
filetype off

if exists('py2') && has('python')
elseif has('python3')
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/indentpython.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'benmills/vimux'
Plug 'baskerville/bubblegum'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
call plug#end()

let g:python_host_prog = '/usr/bin/python'
let g:deoplete#sources#jedi#server_timeout = 120
autocmd CompleteDone * pclose
call deoplete#enable()

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
            \ :exec '!clear; python' shellescape(@%,1)<cr>
let python_highlight_all=1

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='base16_chalk'

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
let g:vimtex_view_method = 'zathura'
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

syntax on
let base16colorspace=256
colorscheme base16-chalk
