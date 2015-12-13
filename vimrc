" --------- SYSTEM INITS
set rtp+=~/.vim/bundle/Vundle.vim
" --------- END


" --------- PLUGINS
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/ScrollColors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-rails'
Plugin 'evidens/vim-twig'
Plugin 'scrooloose/nerdtree'
Plugin 'BoundInCode/AutoFileName'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'sjl/vitality.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gregsexton/MatchTag'
Plugin 'mattn/emmet-vim'
Plugin 'pasela/ctrlp-cdnjs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'thoughtbot/vim-rspec'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'scrooloose/syntastic'
" Just for fun
Plugin 'katono/rogue.vim'
call vundle#end()
" --------- END


" --------- SETTINGS
set nocompatible
filetype off
set number
set encoding=utf-8
set showcmd
filetype plugin indent on " Indentation
set cursorline
" --------- END


" --------- KEYBINDS
nnoremap <F12> :exe ':!open % -a Google\ Chrome' <CR>
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
ino <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" --------- END


" --------- VIM STATUS BAR
set laststatus=2 " Always show statusline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" --------- END


" --------- NERDTREE SETTINGS
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$']

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction
autocmd VimEnter * call StartUp()
" --------- END


" --------- TYPOGRAPHY
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
let g:airline_theme='bubblegum'
syntax enable
" --------- END


" --------- WHITESPACE
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
" --------- END


" --------- SEARCHING
set hlsearch
set incsearch
set ignorecase
set smartcase
" --------- END
