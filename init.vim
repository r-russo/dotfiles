if exists('py2') && has('python')
elseif has('python3')
endif
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/indentpython.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'heavenshell/vim-pydocstring'
"Plug 'nvie/vim-flake8'
Plug 'w0rp/ale'
Plug 'benmills/vimux'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'
call plug#end()

let g:python_host_prog = '/usr/bin/python'
let g:deoplete#sources#jedi#server_timeout = 120
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose

syntax enable

set hidden
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set number
set relativenumber
set numberwidth=4
set ruler
set wrap
set encoding=utf-8
set autoindent
set cursorline
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set ignorecase
set list
set listchars=trail:·
set spelllang=es
set textwidth=79
set colorcolumn=-1
set backupdir=~/tmp/vim
set backupskip=~/tmp/*
set directory=~/tmp/vim
set writebackup

filetype plugin indent on
let mapleader=','
let maplocalleader = ","

au FileType python nnoremap <buffer> <F5>
            \ :VimuxRunCommand('python ' . bufname("%"))<CR>
" au FileType python nnoremap <buffer> <F5>
"             \ :exec '!clear; python' shellescape(@%,1)<cr>

" Latex
let g:tex_flavor = 'latex'
"let g:vimtex_view_method = 'zathura'
au FileType tex set spell |
                        \ nnoremap <leader>p o<Esc>o\par

" Snippets
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
map <leader>c :VimuxInterruptRunner<CR>

inoremap jk <Esc>
nnoremap <leader>w :%s/\s\+$//e <return>
nnoremap <silent><C-l> :nohl<CR><C-l>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-n> :tabnew<CR>

colorscheme dracula
