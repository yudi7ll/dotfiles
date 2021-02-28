call plug#begin()

let g:coc_global_extensions = [
		\ 'coc-css',
		\ 'coc-discord-rpc',
		\ 'coc-emmet',
		\ 'coc-eslint',
		\ 'coc-git',
		\ 'coc-html',
		\ 'coc-htmlhint',
		\ 'coc-json',
		\ 'coc-marketplace',
		\ 'coc-pairs',
		\ 'coc-phpls',
		\ 'coc-tsserver',
		\ 'coc-vimlsp',
		\ 'coc-yaml',
		\ 'coc-xml'
		\ ]

" coc-neco
" Plug 'Shougo/neco-vim'
" Plug 'neoclide/coc-neco'

" colorscheme
Plug 'sjl/badwolf'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ekalinin/Dockerfile.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
" Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'tommcdo/vim-lion'
Plug 'nelstrom/vim-visual-star-search'
" Plug 'chaoren/vim-wordmotion'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
" Plug 'tobyS/vmustache'
" Plug 'tobyS/pdv'
Plug 'sumpygump/php-documentor-vim'
Plug 'jwalton512/vim-blade'

" autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()
