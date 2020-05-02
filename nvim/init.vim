call plug#begin('~/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-sensible'
call plug#end()

let mapleader = ','
set mouse=a
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set number
set nocompatible
filetype off
filetype plugin on
filetype plugin indent on

" Set Vim Theme
set termguicolors

highlight Normal guibg=none
highlight NonText guibg=none

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" Auto update files if changed by external source
set autoread
au FocusGained * :checktime


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" disable the swapfile
set noswapfile

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes