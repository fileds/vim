" Cursor
set guicursor=n-v-c:block
set guicursor+=i-ci-ve:block-blinkwait300-blinkon200-blinkoff150


" Line numbers
set number
set relativenumber

" Indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

" Normal backspace behavior
set backspace=indent,eol,start


" No swapfile, but backup (not sure if works)
" filetype plugin indent on
set noswapfile
set nobackup
let s:undodir = $HOME . '/.vim/undodir'
if !isdirectory(s:undodir)
    call mkdir(s:undodir, 'p')
endif
let &undodir = s:undodir
set undofile

" Highlighting
syntax on
set cursorcolumn
set cursorline
set nohlsearch
set incsearch

set termguicolors

set scrolloff=8
set signcolumn=yes
set isfname+=@-@

set updatetime=50
set colorcolumn=80
