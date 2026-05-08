" Leave insert mode on focus lost
autocmd FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

" Write on focus lost
autocmd BufLeave,FocusLost * silent! wall

" Prevent vim from clearing clipboard upon exit
" autocmd VimLeave * call system("xclip", getreg('+'))

" Remove trailing white spaces
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e " Strips trailing whitespace on all lines
  %s/\($\n\s*\)\+\%$//e " Strips trailing lines
  call cursor(l, c)
endfunction

" Remove trailing whitespace when saving
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
