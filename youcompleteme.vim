" ------------YCM-----------------------
" Set maximum number of popup lines
set pumheight=10
" Show preview to complete option (0 disables)
" Using autocmd to run after YCM
autocmd VimEnter * set completeopt-=preview
" Disable automatic hover popup
let g:ycm_auto_hover = ''
" Trigger it manually with a keybind (e.g. <leader>d)
nmap <leader>d <plug>(YCMHover)
