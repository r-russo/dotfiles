call plug#begin('~/.vim/plugged')

" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Filesystem
Plug 'airblade/vim-gitgutter'

" UI
Plug 'itchyny/lightline.vim'

" Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'gennaro-tedesco/nvim-peekup'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Colorschemes
Plug 'phanviet/vim-monokai-pro'
Plug 'joshdick/onedark.vim'

call plug#end()
