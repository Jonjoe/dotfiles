call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neomake/neomake'
  Plug 'tpope/vim-fugitive'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-sensible'
  Plug 'sheerun/vim-polyglot'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'alvan/vim-closetag'
  Plug 'preservim/nerdtree'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'tpope/vim-obsession'
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'vim-syntastic/syntastic'
  Plug 'w0rp/ale'
  Plug 'jxnblk/vim-mdx-js'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
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
colorscheme monokai_pro

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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using Markdown Preview
let vim_markdown_preview_github=1

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>




" NerdTree
" Trigger
map <leader>b :NERDTreeToggle<CR>"
" Show hidden files
let NERDTreeShowHidden=1


" Fzf
set rtp+=/usr/local/opt/fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>ag       :Ag! <C-R><C-W><CR>
nnoremap <leader>m        :History<CR>


" TAGALONG
" Support more file types
let g:tagalong_additional_filetypes = ['html', 'tsx']
" Send a message if an update happens
let g:tagalong_verbose = 1


" Ale
" Define linters
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" Linter symbols be pimpin
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Autofix on save
let g:ale_fix_on_save = 1

" CLOSETAG
" Filenames
let g:closetag_filenames = '*.html,*.tsx'
