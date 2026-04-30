let mapleader = " "

" Open Netrw
nnoremap <leader>pv :Ex<CR>

" Move highlighted lines
vnoremap <nowait> J :m '>+1<CR>gv=gv
vnoremap <nowait> K :m '<-2<CR>gv=gv

" Keep cursor where you want it to be
nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste without overwriting clipboard
xnoremap <leader>p "_dP

" Copy to system clipboard with leader
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Delete without storing to clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d
