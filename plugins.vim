" Handling plugins with junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'ghifarit53/tokyonight-vim'
" Git
Plug 'tpope/vim-fugitive'
" Commenting
Plug 'tpope/vim-commentary'  " Use gcc to comment a linge, gc to comment target of motion
" Fuzzy file finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Prettier status line
Plug 'itchyny/lightline.vim'
" Instead of swap file, undo even after quitting!
Plug 'mbbill/undotree'
" LSP for autocompletion, linting, go to definition, and much more
Plug 'yegappan/lsp'
" Better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Split function arguments across lines
Plug 'FooSoft/vim-argwrap'
" CSV highlighting
Plug 'mechatroner/rainbow_csv'
" Quarto syntax highlighting
Plug 'quarto-dev/quarto-vim'
" Rust file detection, syntax highlightin formatting
Plug 'rust-lang/rust.vim'
" Aligning latex tables
Plug 'godlygeek/tabular'

call plug#end()
let s:plugin_dir = expand('~/.vim/plugged')
