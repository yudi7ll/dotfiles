augroup FernTypeGroup
    autocmd! * <buffer>
    autocmd BufEnter <buffer> silent execute "normal \<Plug>(fern-action-reload)"
augroup END

" augroup MyGlyphPalette
"   autocmd! *
"   autocmd FileType fern call glyph_palette#apply()
"   autocmd FileType nerdtree,startify call glyph_palette#apply()
" augroup END

" let g:fern#disable_default_mappings          = 1
let g:fern#renderer                          = "nerdfont"
let g:fern#mark_symbol                       = '●'
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = ' '
let g:fern#renderer#default#root_symbol      = '~ '
let g:fern_git_status#disable_ignored        = 1
let g:fern_git_status#disable_submodules     = 1
