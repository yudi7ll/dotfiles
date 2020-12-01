
" fern.vim
nmap <silent> <C-n> :Fern . -drawer -reveal=% -width=40 -toggle<CR>
" nmap <silent> <C-b> :Fern %:h -drawer -width=40 -toggle<CR>
" silent! nmap <C-n> :Fern . -drawer -width=40 -toggle<CR>

function! s:init_fern() abort
	nmap <buffer><expr> <Plug>(fern-custom-open-expand)
				\ fern#smart#leaf(
				\ 	"<Plug>(fern-action-open:select)",
				\ 	"<Plug>(fern-action-expand:stay)",
				\ )
	nmap <buffer> A <Plug>(fern-action-new-dir)
	nmap <buffer> a <Plug>(fern-action-new-file)
	nmap <buffer> c <Plug>(fern-action-clipboard-copy)
	nmap <buffer> d <Plug>(fern-action-trash)
	nmap <buffer> D <Plug>(fern-action-remove)
	nmap <buffer> h <Plug>(fern-action-collapse)
	nmap <buffer> l <Plug>(fern-custom-open-expand)
	nmap <buffer> m <Plug>(fern-action-choice)
	nmap <buffer> o <Plug>(fern-custom-open-expand)
	nmap <buffer> p <Plug>(fern-action-clipboard-paste)
	nmap <buffer> r <Plug>(fern-action-move)
	nmap <buffer> R <Plug>(fern-action-reload)
	nmap <buffer> s <Plug>(fern-action-open:split)
	nmap <buffer> S <Plug>(fern-action-hidden:toggle)
	nmap <buffer> t <Plug>(fern-action-open:tabedit)
	nmap <buffer> v <Plug>(fern-action-open:vsplit)
	nmap <buffer> x <Plug>(fern-action-clipboard-move)
	nmap <buffer> X <Plug>(fern-action-open:system)
	nmap <buffer> <BS> <Plug>(fern-action-leave)
	nmap <buffer> <CR> <Plug>(fern-action-open-or-enter)
endfunction

augroup FernCustom
	autocmd! *
	autocmd FileType fern call s:init_fern()
augroup END

augroup FernTypeGroup
	autocmd! * <buffer>
	autocmd BufEnter <buffer> silent execute "normal \<Plug>(fern-action-reload)"
augroup END

let g:fern#disable_default_mappings          = 1
let g:fern#renderer                          = "nerdfont"
let g:fern_git_status#disable_ignored        = 1
let g:fern_git_status#disable_submodules     = 1
