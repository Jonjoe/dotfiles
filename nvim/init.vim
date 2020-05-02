call plug#begin('~/.vim/plugged')
  " Theme and Syntax
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sheerun/vim-polyglot'

  " Core Components
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }

  " Code Navigation
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Code Quality
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

" ================ Core Config 
" Remap LEADER key
let mapleader        = ','

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Enable vim to be usable with a mouse
set mouse            =a

" ================ Theme Config 

" Put vim into syntax mode
syntax enable

" Stop Dracula from forcing its background
let g:dracula_colorterm = 0

" Set Dracula as the color scheme
colorscheme dracula

" Configure the line numbers
set relativenumber
set number

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
let NERDTreeShowHidden=1

" ================ FZF

" Set executable path
set rtp+=/usr/local/opt/fzf

" Remap init keybinding
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>ag       :Ag! <C-R><C-W><CR>
nnoremap <leader>m        :History<CR>

" ================ Prettier 

" Enable Autoformatter
let g:prettier#autoformat = 1

" Include these file extensions
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ================ CoC

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)