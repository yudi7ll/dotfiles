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

" coc explorer
nmap <C-n> :CocCommand explorer<CR>

nmap <C-t> :tabnew<CR>
nmap <C-j> :tabprev<CR>
nmap <C-k> :tabnext<CR>

silent! nmap <C-p> :GFiles --exclude-standard --others --cached<CR>

colorscheme badwolf
