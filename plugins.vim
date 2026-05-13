" Handling plugins with junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'ghifarit53/tokyonight-vim'
" Fuzzy file finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Prettier status line
Plug 'itchyny/lightline.vim'
" Instead of swap file, undo even after quitting!
Plug 'mbbill/undotree'
" LSP for autocompletion, linting, go to definition, and much more
Plug 'yegappan/lsp'
" Split function arguments across lines
Plug 'FooSoft/vim-argwrap'

call plug#end()
let s:plugin_dir = expand('~/.vim/plugged')
