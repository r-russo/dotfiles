" Plugins
call plug#begin('~/.vim/plugged')
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
Plug 'davidhalter/jedi-vim'
Plug 'heavenshell/vim-pydocstring'
Plug 'benmills/vimux'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

let g:python_host_prog = '/usr/bin/python'
autocmd CompleteDone * pclose

" NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c
let g:ncm2#matcher = 'substrfuzzy'

" Jedi
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

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
autocmd BufWritePost *.c,*.py call system("ctags -R")
set completeopt=noinsert,menuone,noselect

au FileType python nnoremap <buffer> <F5>
            \ :VimuxRunCommand('python ' . bufname("%"))<CR>

" Latex
let g:tex_flavor = 'latex'
"let g:vimtex_view_method = 'zathura'
au FileType tex set spell |
                        \ nnoremap <leader>p o<Esc>o\par

set conceallevel=2
set concealcursor=nc
let g:tex_conceal="gam"

let g:indentLine_conceallevel  = &conceallevel
let g:indentLine_concealcursor = &concealcursor

" Snippets
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
map <leader>c :VimuxInterruptRunner<CR>

" Remaps
inoremap jk <Esc>
nnoremap <leader>w :%s/\s\+$//e <return>
" splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" tabs
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nmap <silent> <C-m> <Plug>(pydocstring)

colorscheme dracula
