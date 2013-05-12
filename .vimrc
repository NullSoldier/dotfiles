execute pathogen#infect()

set sw=4 ts=4 sts=4 noet
set nosmartindent
set noautoindent
set cindent
set backspace=indent,eol,start

set tw=60
set relativenumber
"set number

set hlsearch
set incsearch

set splitright splitbelow
set autowrite
set nowrap
set ruler
set listchars+=precedes:<,extends:>

syntax on
filetype on
filetype indent on
filetype plugin on

au BufNewFile, BufRead *.as set filetype=javascript
"au BufNewFile *.{h,hpp} call <SID>insert_include_guards()

let g:clang_complete_macros = 1
let g:clang_auto_select = 1
let g:clang_complete_auto = 1
let g:clang_hl_errors = 1
let g:clang_complete_patterns = 1
let g:clang_user_options = '-std=c++11'

"Add include guards for .h, .hpp files in C++
function! s:insert_include_guards()
	let name = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . name . "\<CR>#define " . name . "\<CR>\<CR>#endif"
	normal! k
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_include_guards()
