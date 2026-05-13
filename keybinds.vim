let mapleader = " "

" ── Vanilla ────────────────────────────────────────────────────────────────
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

" ── Plugins ────────────────────────────────────────────────────────────────
" yegappan/lsp
nnoremap <silent> gd  :LspGotoDefinition<CR>
nnoremap <silent> gr  :LspShowReferences<CR>
nnoremap <silent> K   :LspHover<CR>
nnoremap <silent> gR  :LspRename<CR>
nnoremap <silent> ga  :LspCodeAction<CR>
nnoremap <silent> go  :LspOutline<CR>
nnoremap <silent> [d  :LspDiag prev<CR>
nnoremap <silent> ]d  :LspDiag next<CR>
function! ToggleLspDiag() abort
    if getloclist(0, {'winid': 1}).winid
        lclose
    else
        LspDiag show
    endif
endfunction
nnoremap <silent> <leader>d :call ToggleLspDiag()<CR>
" Use Tab to complete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"

" mbbill/undotree
" toggle
nnoremap <leader>u :UndotreeToggle<CR>

" junegunn/fzf
" List files
nnoremap <leader>pf :Files<CR>
" List git files
nnoremap <leader>pg :GFiles<CR>
" List file histtory
nnoremap <leader>ph :History<CR>
nnoremap <leader>pb :Buffer<CR>
nnoremap <leader>ps :Rg<Space>

" FooSoft/vim-argwrap
nnoremap <silent> <leader>w :ArgWrap<CR>
