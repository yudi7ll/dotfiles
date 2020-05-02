set number
set relativenumber
set autoindent
set smartindent
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set wildmode=longest,list,full
set wildmenu
set cursorline
set termguicolors
set clipboard=unnamedplus
set nowrap

" edit files on the same dir
nmap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

" python2
let g:python_host_prog='/usr/bin/python2'
" python3
let g:python3_host_prog='/usr/bin/python'

" NERDTree
let g:NERDTreeWinSize=40
nmap <C-n> :NERDTreeToggle <bar> :set relativenumber<CR>

nmap <C-t> :tabnew<CR>
nmap <C-j> :tabprev<CR>
nmap <C-k> :tabnext<CR>

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

" coc-neco
" Plug 'Shougo/neco-vim'
" Plug 'neoclide/coc-neco'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Loaded when clojure file is opened
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
" Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
" Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
" Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sjl/badwolf'
Plug 'itchyny/lightline.vim'
" Plug 'kien/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'yuezk/vim-js'
Plug 'chemzqm/vim-jsx-improve'
" Plug 'jwalton512/vim-blade'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'thosakwe/vim-flutter'
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'

" autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()

colorscheme badwolf
