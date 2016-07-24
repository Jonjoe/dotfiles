set nocompatible
" --------- TYPOGRAPHY
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set backspace=indent,eol,start
call vundle#begin('~/Dotfiles/vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/vitality.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
" Syntax
Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()


set tabstop=2
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1
"let g:airline_theme='bubblegum'
syntax enable
" --------- END

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
set cursorline
set cursorcolumn
au FocusLost * silent! wa
filetype plugin on

" AirLine Configs
let g:airline#extensions#tabline#enabled = 1

" Syntastic Configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Emmet Configs
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" CTRLP Configs
let g:ctrlp_reuse_window  = 'startify'
