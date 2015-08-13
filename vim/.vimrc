set nocompatible

set sw=4 ts=4 sts=4 noet
set nosmartindent
set noautoindent
set cindent
set backspace=indent,eol,start
set relativenumber

set hlsearch
set incsearch

set splitright splitbelow
set autowrite
set nowrap
set ruler
set listchars+=precedes:<,extends:>

syntax enable
syntax on
filetype on
filetype indent on
filetype plugin on

" Force windows to use ~/.vim instead of ~/vimfiles
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" Vundle plugin manager
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'lsdr/monokai'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype on

" Pathogen plugin manager
execute pathogen#infect()

"Add include guards for .h, .hpp files in C++
function! s:insert_include_guards()
	let name = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . name . "\<CR>#define " . name . "\<CR>\<CR>#endif"
	normal! k
endfunction

au BufNewFile, BufRead *.as set filetype=javascript
au BufNewFile *.{h,hpp} call <SID>insert_include_guards()
