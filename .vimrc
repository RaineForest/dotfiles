
set t_Co=256

filetype plugin on
syntax on
set nu
set autoindent
set tabpagemax=100
set background=light

if has("autocmd")
	" Highlight more thant TODO
	if v:version > 701
		autocmd Syntax * call matchadd('Todo', '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
		autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
	endif
endif
