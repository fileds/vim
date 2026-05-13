" Cursor
set guicursor=n-v-c:block
set guicursor+=i-ci-ve:block-blinkwait300-blinkon200-blinkoff150

" Enable mouse
set mouse=a

" Line numbers
set number
set relativenumber

" Indenting
filetype plugin indent on
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

" Normal backspace behavior
set backspace=indent,eol,start

" No swapfile, but backup
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
" set nohlsearch
set incsearch

set termguicolors

set scrolloff=8
set signcolumn=yes
set isfname+=@-@

set updatetime=50
set colorcolumn=80

" Visual completion menu above commandline
set wildmenu
set wildignorecase
