set nocompatible
" --------- TYPOGRAPHY
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set backspace=indent,eol,start
call vundle#begin('~/Dotfiles/vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'garbas/vim-snipmate'

filetype plugin indent on

set tabstop=4
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
" let g:airline_theme='bubblegum'
syntax enable
" --------- END
