set autoindent
set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set expandtab
set nowrap
set number
set relativenumber
set shell=/usr/bin/zsh
set smartindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set termguicolors
set wildmode=longest,full
set wildmenu

" edit files on the same dir
nmap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

" python2
let g:python_host_prog='/usr/bin/python2'
" python3
let g:python3_host_prog='/usr/bin/python3'

" coc explorer
silent! nmap <C-n> :CocCommand explorer<CR>

silent! nmap <C-t> :tabnew<CR>
silent! nmap <C-j> :tabprev<CR>
silent! nmap <C-k> :tabnext<CR>

silent! nmap <C-p> :GFiles --exclude-standard --others --cached<CR>

colorscheme badwolf
