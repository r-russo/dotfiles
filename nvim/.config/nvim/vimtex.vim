let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

autocmd FileType tex setlocal conceallevel=2
autocmd FileType tex,markdown setlocal spell spelllang=es_ar
let g:tex_conceal="abdgm"
set encoding=utf8

syn region texZone start="\\begin{bash}" end="\\end{bash}\|%stopzone\>"
