" Plugins
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
"Plug 'davidhalter/jedi-vim'
Plug 'heavenshell/vim-pydocstring'
Plug 'benmills/vimux'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:python_host_prog = '/usr/bin/python'
autocmd CompleteDone * pclose

" NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c
let g:ncm2#matcher = 'substrfuzzy'

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
let mapleader="\<Space>"
let maplocalleader = "\<Space>"
autocmd BufWritePost *.c,*.py call system("ctags -R")
set completeopt=noinsert,menuone,noselect

" Execute
au FileType python nnoremap <buffer> <F5>
            \ :VimuxRunCommand('python ' . bufname("%"))<CR>
au FileType python nnoremap <buffer> <F6> :exec '!python' shellescape(@%, 1)<cr>

" Latex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
au FileType tex set spell |
                        \ nnoremap <leader>p o<Esc>o\par

set conceallevel=1
let g:tex_conceal="abdmg"

let g:indentLine_conceallevel  = &conceallevel
let g:indentLine_concealcursor = &concealcursor

" Snippets
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"
 let g:UltiSnipsSnippetsDir = "~/.config/nvim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', '~/.config/nvim/UltiSnips']

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
map <leader>c :VimuxInterruptRunner<CR>

" Remaps
inoremap jk <Esc>
nnoremap <leader>w :w <cr>
nnoremap <leader>W :%s/\s\+$//e <return>
nnoremap <leader>au :exec '!make upload'<cr>

" splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nmap <silent> <C-m> <Plug>(pydocstring)

colorscheme nord

let g:lightline = {'colorscheme': 'wombat', }
