source ~/.config/nvim/plugins.vim
source ~/.config/nvim/main.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/ultisnips.vim
source ~/.config/nvim/vimtex.vim
source ~/.config/nvim/ale.vim

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:rustfmt_autosave = 1

set t_Co=256
set termguicolors
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
colorscheme onedark
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ }
