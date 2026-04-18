" Leave insert mode on focus lost
au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")
" Save on focus lost
au FocusLost,TabLeave * :wa
" Prevent vim from clearing clipboard upon exit
au VimLeave * call system("xclip", getreg('+'))
" Remove trailing white spaces
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e " Strips trailing whitespace on all lines
  %s/\($\n\s*\)\+\%$//e " Strips trailing lines
  call cursor(l, c)
endfunction
" Remove trailing whitespace when saving
au BufWritePre * :call <SID>StripTrailingWhitespaces()
