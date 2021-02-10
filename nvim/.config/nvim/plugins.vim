call plug#begin('~/.vim/plugged')

" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
" Plug 'puremourning/vimspector'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Filesystem
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

" UI
Plug 'itchyny/lightline.vim'
Plug 'phanviet/vim-monokai-pro'

" Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

call plug#end()
