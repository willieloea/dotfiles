" #########################################
" #██╗   ██╗██╗███╗   ███╗██████╗  ██████╗#
" #██║   ██║██║████╗ ████║██╔══██╗██╔════╝#
" #██║   ██║██║██╔████╔██║██████╔╝██║     #
" #╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     #
" # ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗#
" #  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝#
" #########################################

"=== GENERAL ==="
filetype indent on	" file detection, indentation
filetype plugin on	" file detection, plugin loading
set encoding=utf-8	" encoding
set nocompatible	" disable compatibility with vi
set number			" line numbering
set relativenumber	" relative line numbering
set laststatus=2	" ensure status line is always displayed
set termguicolors	" allow vim to use 'true colors'
set scrolloff=0		" nr. of lines below/above cursor

"=== COLORS ==="
set colorcolumn=81	" color column 81
highlight ColorColumn ctermbg=224 guibg=#80a0ff
syntax on			" syntax highlighting

"=== FORMATTING ==="
set tabstop=4		" width of <tab>
set shiftwidth=4	" nr of spaces used for each step of autoindent

"=== REMAPPINGS ==="
" jj is equivalent to <ESC>
inoremap jj <ESC>

"=== SEARCH ==="
set hlsearch	" highlight search results
set ignorecase	" ignore case during search
set incsearch	" incrementally highlight search results
set showmatch	" show matching search results

"=== WILDMENU ==="
set wildmenu				" enable auto completion after <tab>
set wildmode=list:longest	" behave like bash completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx
							" ingore files with above extensions

"=== Vim Air-line and other plugins ==="
call plug#begin('~/.vim/plugged')

" Add vim-airline and its themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Enable the use of powerline fonts
let g:airline_powerline_fonts = 1

" Set a theme for vim-airline
let g:airline_theme='powerlineish'

