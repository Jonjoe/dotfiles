call plug#begin('~/.vim/plugged')
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'

  " Code Navigation
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader        = ','
set mouse            =a





" ================ Theme Config 

" Put vim into syntax mode
syntax enable

" Set Dracula as the color scheme
colorscheme dracula

" Configure the line numbers
set relativenumber
set number

" Stop Dracula from forcing its background
let g:dracula_colorterm = 0

" ================ Netrw 

" Disable Banner
let g:netrw_banner = 0

" The default listing style I like, one file per line with file size and time stamp
let g:netrw_liststyle = 1

" Directories on the top, files below
let g:netrw_sort_sequence ='[\/]$,*'

" ================ NerdTree

" Trigger
map <leader>b :NERDTreeToggle<CR>"

" Show hidden files
let NERDTreeShowHidden=1" ================ CoC
 
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)