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
Plug 'luochen1990/rainbow'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'

call plug#end()
