" ------------SYNTASTIC-----------------
" Keep sign column
set signcolumn=yes
" Background color for sign column
highlight SignColumn ctermbg=8 guibg=#002b36
" Recommended adds
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Replace symbols for errors
" let g:syntastic_error_symbol = "!"
" let g:syntastic_style_error_symbol = "\u25b4"
" let g:syntastic_warning_symbol = "\u25b2"
" let g:syntastic_style_warning_symbol = "\u25b4"

" Set flake8 as the Python checker
let g:syntastic_python_checkers = ['flake8']

