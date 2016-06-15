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
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neocomplete'
Plugin 'mattn/emmet-vim'
" Syntax
Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()

filetype plugin indent on

set tabstop=2
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
"let g:airline_theme='bubblegum'
syntax enable
" --------- END


" CTRLP Configs
let g:ctrlp_reuse_window  = 'startify'
