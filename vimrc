set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set number
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'garbas/vim-snipmate'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'marcweber/vim-addon-mw-utils'

" autocmd vimenter * NERDTree

call vundle#end()            " required
filetype plugin indent on    " required


" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" guifont=Lucida_Console:h11

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

colorscheme monokai

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
