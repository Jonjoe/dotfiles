" ============================
" | Install Plugins
" ============================

call plug#begin('~/.vim/plugged')
  " Theme and Syntax
  Plug 'arcticicestudio/nord-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'vim-airline/vim-airline'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'vim-scripts/applescript.vim'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'vim-airline/vim-airline-themes'

  " Core Components
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }

  " Code Intelligence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'raimondi/delimitmate'
  Plug 'tpope/vim-sleuth'
call plug#end()

" ============================
" | Core Config 
" ============================

" Remap LEADER key
let mapleader = "\<Space>" 

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

" Auto reload files if file is edited externally
set autoread

" Put vim into syntax mode
syntax enable

" Set Dracula as the color scheme
set termguicolors
colorscheme nord

" Itallisize parts of the syntax
hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

" Convert tabs to spaces
set smartindent
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

" Disable status line
set ls=0

" Hide status mode text
set noshowmode

let g:nord_cursor_line_number_background = 3

" ============================
" | Airline Config
" ============================ 

" Set theme
let g:airline_theme = 'nord'

" Enable powerline fonts
let g:airline_powerline_fonts = 1

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

" Disable the status line
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"

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

" Disable FZF status bar
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" ============================
" | Coc Config
" ============================

" Use K to show documentation in preview window.
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Set Packages needed
let g:coc_global_extensions = ['coc-tsserver']
let g:coc_global_extensions += ['coc-prettier']
let g:coc_global_extensions += ['coc-eslint']

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ============================
" | Sleuth Config
" ============================

" Run it automatically when we enter a new buffer
autocmd BufEnter * :Sleuth


" ============================
" | TagAlong Config 
" ============================

" Support more file types
let g:tagalong_additional_filetypes = ['html', 'tsx']

" Send a message if an update happens
let g:tagalong_verbose = 1
