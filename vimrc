" SYSTEM INITS
set rtp+=~/.vim/bundle/Vundle.vim
" END


" PLUGINS 
call vundle#begin()
Plugin 'https://github.com/VundleVim/Vundle.vim'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'https://github.com/tomtom/tlib_vim'
Plugin 'https://github.com/tpope/vim-rails'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plugin 'https://github.com/garbas/vim-snipmate'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/thoughtbot/vim-rspec'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'https://github.com/ecomba/vim-ruby-refactoring'
Plugin 'https://github.com/marcweber/vim-addon-mw-utils'
call vundle#end()     
" END


" SYSTEM SETTINGS
set nocompatible    
filetype off       
set number
set encoding=utf-8
set showcmd             
filetype plugin indent on
" END


" TYPOGRAPHY
colorscheme monokai
syntax enable
" END


" WHITESPACE 
set nowrap               
set tabstop=2 shiftwidth=2
set expandtab            
set backspace=indent,eol,start
" END


"" SEARCHING 
set hlsearch                 
set incsearch               
set ignorecase             
set smartcase
" END
