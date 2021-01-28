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

set conceallevel=2
let g:tex_conceal="abdgm"
set encoding=utf8

syn region texZone start="\\begin{bash}" end="\\end{bash}\|%stopzone\>"
