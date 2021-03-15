let mapleader = ' '
let maplocalleader="\<space>"

nnoremap [b :bn<CR>
nnoremap ]b :bp<CR>

nnoremap <leader>b :Buffer<CR>
nnoremap <leader>f :Files<CR>

let g:peekup_open = '<leader>"'
let g:peekup_paste_before = '<leader>P'
let g:peekup_paste_after = '<leader>p'

nnoremap <leader>aj :ALENext<CR>
nnoremap <leader>ak :ALENext<CR>

nnoremap <silent> <leader>nr :source ~/.config/nvim/init.vim<CR>
