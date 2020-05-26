set number
set relativenumber
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
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

" coc explorer
nmap <C-n> :CocCommand explorer<CR>

nmap <C-t> :tabnew<CR>
nmap <C-j> :tabprev<CR>
nmap <C-k> :tabnext<CR>

" CTRLP
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dist/*,*/vendor/*
"
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
" let g:ctrlp_show_hidden = 1
" end CTRLP

nmap <C-p> :Files<CR>

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
" end lightline

colorscheme badwolf
