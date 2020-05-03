" ============================
" | Install Plugins
" ============================

call plug#begin('~/.vim/plugged')
  " Theme and Syntax
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " Core Components
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }

  " Code Intelligence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" ============================
" | Core Config 
" ============================

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

set updatetime=300

" Enable vim to be usable with a mouse
set mouse            =a

" ============================
" | Theme Config 
" ============================

" Put vim into syntax mode
syntax enable

" Stop Dracula from forcing its background
let g:dracula_colorterm = 0

" Set Dracula as the color scheme
colorscheme dracula

" Convert tabs to spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Conditionally Regenerate syntax highlighting 
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Configure the line numbers
set relativenumber
set number

" ============================
" | NetRW Config
" ============================ 

" Disable Banner
let g:netrw_banner = 0

" The default listing style I like, one file per line with file size and time stamp
let g:netrw_liststyle = 1

" Directories on the top, files below
let g:netrw_sort_sequence ='[\/]$,*'

" ============================
" | NerdTree Config
" ============================

" Trigger
map <leader>b :NERDTreeToggle<CR>"

" Show hidden files
let NERDTreeShowHidden=1

" ============================
" | FZF Config
" ============================

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

" ============================
" | Coc Config
" ============================

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

" Set Packages needed
let g:coc_global_extensions = ['coc-tsserver']
let g:coc_global_extensions += ['coc-prettier']
let g:coc_global_extensions += ['coc-eslint']

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
