call plug#begin('~/.vim/plugged')
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
call plug#end()

let mapleader        = ','
set mouse            =a
syntax enable
colorscheme dracula
set relativenumber
set number

" Netrw

" Disable Banner
let g:netrw_banner = 0

" The default listing style I like, one file per line with file size and time stamp
let g:netrw_liststyle = 1

" Directories on the top, files below
let g:netrw_sort_sequence ='[\/]$,*'