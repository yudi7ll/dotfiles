set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set wildmode=longest,list,full
set wildmenu
set cursorline
set termguicolors
set clipboard=unnamedplus
set nowrap

" edit files on the same dir
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

" Explore style
let g:netrw_liststyle = 3

" python2
let g:python_host_prog='/usr/bin/python2'
" python3
let g:python3_host_prog='/usr/bin/python'

" coc-explorer
nmap <C-n> :CocCommand explorer<CR>

" CTRLP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/*,*/vendor/*

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_show_hidden = 1
" end CTRLP

" coc Git
" lightline
if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark','gitbranch', 'git', 'diagnostic', 'filename', 'method', 'readonly', 'modified' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'lineinfo', 'percent', 'cocstatus' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'cocstatus': 'coc#status',
  \   'gitbranch': 'fugitive#head',
  \ }
\ }

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

" COC NVIM
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" END COC-NVIM

" PLUGINS
call plug#begin()
" COC NVIM
" latest tag
Plug 'neoclide/coc.nvim'
" Use release branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" RUN :CocInstall coc-html coc-css coc-emmet coc-tsserver coc-json coc-git coc-highlight coc-svg coc-vetur coc-explorer coc-webpack coc-gitignore coc-docker coc-sh coc-tslint-plugin coc-phpls coc-marketplace

" coc-neco
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Lightline
Plug 'itchyny/lightline.vim'

" ctrlp
Plug 'kien/ctrlp.vim'

" tcomment
Plug 'tomtom/tcomment_vim'

" vim-surround
Plug 'tpope/vim-surround'

" JSX & Javascript
Plug 'chemzqm/vim-jsx-improve'

" laravel blade
Plug 'jwalton512/vim-blade'

" editorConfig
Plug 'editorconfig/editorconfig-vim'

" fugitive
Plug 'tpope/vim-fugitive'

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()

colorscheme badwolf
" colorscheme gruvbox
