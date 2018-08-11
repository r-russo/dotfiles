if exists('py2') && has('python')
elseif has('python3')
endif
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'zchee/deoplete-jedi'
Plug 'roxma/nvim-yarp'
Plug 'heavenshell/vim-pydocstring'
Plug 'benmills/vimux'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

let g:python_host_prog = '/usr/bin/python'
"let g:deoplete#sources#jedi#server_timeout = 120
"et g:deoplete#enable_at_startup = 1
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

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

filetype plugin indent on
let mapleader=','
let maplocalleader = ","
autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd BufWritePost *.c,*.py call system("ctags -R")
set completeopt=noinsert,menuone,noselect

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
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-n> :tabnew<CR>
nmap <silent> <C-m> <Plug>(pydocstring)

colorscheme dracula
