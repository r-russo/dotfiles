let g:ale_linters = {
            \ 'python': ['pylint', 'vulture'],
            \}
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['black', 'isort'],
            \ 'cpp': ['clang-format'],
            \ 'html': ['tidy'],
            \}

let g:ale_fix_on_save = 1
let g:ale_python_black_options = '--line-length 120'
let g:ale_python_pylint_options = '--extension-pkg-whitelist=pygame --max-line-length=120 --ignore-patters=invalid-name'
let g:ale_c_clangformat_options = "-style='{BasedOnStyle: LLVM, IndentWidth: 4, ColumnLimit: 120}'"
