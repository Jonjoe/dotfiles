autocmd bufwritepost .vimrc source $HOME/.vimrc
autocmd User Rails 

set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'

" NerdTree Configs
let g:NERDTreeWinPos = "right" 


" Syntax and Style
set tabstop=2
set lines
set guioptions-=T " Removes top toolbar 
set guioptions-=r " Removes right hand scroll bar 
set go-=L " Removes left hand scroll bar 

syntax on
colorscheme Monokai 

let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly 
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

filetype plugin on

