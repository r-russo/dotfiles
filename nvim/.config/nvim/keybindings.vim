let mapleader = ' '
let maplocalleader="\<space>"

nnoremap [b :bn<CR>
nnoremap ]b :bp<CR>

nnoremap <leader>b :Buffer<CR>
nnoremap <leader>f :Files<CR>

let g:peekup_open = '<leader>"'
let g:peekup_paste_before = '<leader>P'
let g:peekup_paste_after = '<leader>p'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nnoremap <leader>nr :source ~/.config/nvim/init.vim<CR>
