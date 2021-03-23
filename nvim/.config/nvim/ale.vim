let g:ale_linters = {
            \ 'python': ['mypy', 'bandit', 'pylint'],
            \}
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['yapf', 'isort'],
            \ 'cpp': ['clang-format'],
            \ 'html': ['tidy'],
            \}

let g:ale_fix_on_save = 1
let g:ale_python_isort_options = '--line-length 79'
let g:ale_python_mypy_options = '--strict --ignore-missing-imports'
let g:ale_c_clangformat_options = "-style='{BasedOnStyle: LLVM, IndentWidth: 5, ColumnLimit: 79}'"
