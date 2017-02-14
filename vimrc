set nocompatible
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/syntastic'
	Plugin 'shougo/vimproc.vim'
	Plugin 'kien/ctrlp.vim'
	Plugin 'valloric/youcompleteme'	


	" ==== Style Plugins
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'powerline/fonts'
	
	" ==== Rails Plugins
	Plugin 'tpope/vim-rails'
	
	" ==== Typescript Plugins
	Plugin 'leafgarland/typescript-vim'
	Plugin 'Quramy/vim-js-pretty-template'
	Plugin 'jiangmiao/auto-pairs'
call vundle#end() 


" | =======================
" | Theme Configs
" | =======================

set backspace=indent,eol,start
set tabstop=2
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
syntax enable


" | =======================
" | Plugin Configs
" | =======================

" | YouCompleteMe 
" |------------------------
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" | CTags 
" |------------------------
set tags=./tags;

" | AirLine 
" |------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 


" | Typescript
" |------------------------
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" | JS Pretty Templates
" |------------------------
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
