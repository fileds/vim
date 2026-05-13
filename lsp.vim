" " LSP settings
" Keybinds are in keybinds.vim

autocmd User LspSetup call s:LspConfig()

" To run after loading all plugins
function! s:LspConfig() abort
    " ── Options ──────────────────────────────────────────────────────────
    call LspOptionsSet(#{
        \  autoComplete:            v:true,
        \  autoHighlightDiags:      v:true,
        \  showDiagInPopup:         v:true,
        \  showDiagWithSign:        v:true,
        \  showDiagWithVirtualText: v:false,
        \  highlightDiagInline:     v:true,
        \  showSignature:           v:true,
        \  hoverInPreview:          v:false,
        \  outlineOnRight:          v:true,
        \ })
    " ── Servers ──────────────────────────────────────────────────────────
    call LspAddServer([#{
        \  name:     'pylsp',
        \  filetype: ['python'],
        \  path:     exepath('pylsp'),
        \  args:     [],
        \ }, #{
        \  name:     'r-languageserver',
        \  filetype: ['r', 'rmd'],
        \  path:     exepath('Rscript'),
        \  args:     ['-e', 'languageserver::run()'],
        \ }, #{
        \  name:     'texlab',
        \  filetype: ['tex', 'plaintex', 'bib'],
        \  path:     exepath('texlab'),
        \  args:     [],
        \ }])
endfunction
