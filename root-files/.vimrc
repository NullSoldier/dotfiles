" Force windows to use ~/.vim instead of ~/vimfiles
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

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

"Add include guards for .h, .hpp files in C++
function! s:insert_include_guards()
	let name = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . name . "\<CR>#define " . name . "\<CR>\<CR>#endif"
	normal! k
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_include_guards()
