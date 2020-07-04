call plug#begin()

" coc-neco
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Loaded when clojure file is opened
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
" Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
" Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sjl/badwolf'
Plug 'itchyny/lightline.vim'
" Plug 'kien/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
" Plug 'yuezk/vim-js'
Plug 'chemzqm/vim-jsx-improve'
" Plug 'jwalton512/vim-blade'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
" Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'vim-vdebug/vdebug'

autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()
