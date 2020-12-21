if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'tokyonight',
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
