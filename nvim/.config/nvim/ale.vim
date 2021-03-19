let g:ale_linters = {
            \ 'python': ['mypy', 'bandit', 'vulture', 'pylint'],
            \}
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['black', 'isort'],
            \ 'cpp': ['clang-format'],
            \ 'html': ['tidy'],
            \}

let g:ale_fix_on_save = 1
let g:ale_python_black_options = '--line-length 120'
let g:ale_python_isort_options = '--line-length 120'
let g:ale_python_mypy_options = '--strict'
let g:ale_c_clangformat_options = "-style='{BasedOnStyle: LLVM, IndentWidth: 4, ColumnLimit: 120}'"
