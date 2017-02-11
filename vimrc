set nocompatible
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
call vundle#end() 

set backspace=indent,eol,start
set tabstop=2
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
syntax enable

