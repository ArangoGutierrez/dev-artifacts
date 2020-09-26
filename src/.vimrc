" Eduardo Arango
"
" Enable syntax highlighting
syntax on
" Display line numbers on the left
set number
" Display new window on the right or below
set splitright
set splitbelow
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
" Show partial commands in the last line of the screen
set showcmd
" vim-go improvements
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" Vim-go
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

" Latex
function! SetLatex()
	set textwidth=80
	set colorcolumn=80	
	highlight OverLength ctermbg=red ctermfg=white guibg=#592929
	match OverLength /\%81v.\+/
endfunction

" Personal Aliases 
:command Wq wq
set maxmempattern=100000
