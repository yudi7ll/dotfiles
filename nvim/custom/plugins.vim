call plug#begin()

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
		\ 'coc-emmet',
		\ 'coc-css',
		\ 'coc-html',
		\ 'coc-json',
		\ 'coc-pairs',
		\ 'coc-tsserver',
		\ 'coc-phpls',
		\ 'coc-yaml',
		\ 'coc-explorer',
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
Plug 'ryanoasis/vim-devicons'
" Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
" Plug 'honza/vim-snippets'
" Plug 'vim-vdebug/vdebug'
Plug 'noahfrederick/vim-laravel'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()
