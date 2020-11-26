call plug#begin()

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
		\ 'coc-emmet',
		\ 'coc-css',
		\ 'coc-html',
		\ 'coc-json',
		\ 'coc-tsserver',
		\ 'coc-pairs',
		\ 'coc-phpls',
		\ 'coc-yaml',
		\ 'coc-xml',
		\ ]

" coc-neco
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'

" colorscheme
Plug 'sjl/badwolf'
" Plug 'morhetz/gruvbox'


Plug 'itchyny/lightline.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
" Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'chemzqm/vim-jsx-improve'
Plug 'jwalton512/vim-blade'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
" Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
" Plug 'honza/vim-snippets'
" Plug 'vim-vdebug/vdebug'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'digitaltoad/vim-pug'
Plug 'slim-template/vim-slim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
" Plug 'tommcdo/vim-lion'
Plug 'nelstrom/vim-visual-star-search'
" Plug 'chaoren/vim-wordmotion'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()
