set nocompatible
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/Dotfiles/vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'garbas/vim-snipmate'

filetype plugin indent on

" --------- TYPOGRAPHY
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
" let g:airline_theme='bubblegum'
syntax enable
" --------- END
