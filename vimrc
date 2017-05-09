autocmd bufwritepost .vimrc source $HOME/.vimrc

set nocompatible
filetype off

set tabstop=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Plugin 'ctrlpvim/ctrlp.vim'

colorscheme new-railscasts

filetype plugin indent on
