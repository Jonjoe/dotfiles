" SYSTEM INITS
set rtp+=~/.vim/bundle/Vundle.vim
" END


" PLUGINS 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/ScrollColors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'pasela/ctrlp-cdnjs'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'marcweber/vim-addon-mw-utils'
call vundle#end()     
" END


" SYSTEM SETTINGS
set nocompatible    
filetype off       
set number
set encoding=utf-8
set showcmd             
filetype plugin indent on " Indentation
:au FocusLost * silent! :wa " Save on focus lost
" END

" CUSTOM KEYBINDS
nnoremap <F12> :exe ':!open % -a Google\ Chrome' <CR>

" NERDTREE SETTINGS
let NERDTreeShowBookmarks=1
" END

" EMMET SETTINGS
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
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
