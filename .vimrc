" #########################################
" #██╗   ██╗██╗███╗   ███╗██████╗  ██████╗#
" #██║   ██║██║████╗ ████║██╔══██╗██╔════╝#
" #██║   ██║██║██╔████╔██║██████╔╝██║     #
" #╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     #
" # ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗#
" #  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝#
" #########################################

"========================================================================
"================ GENERAL ===============================================
"========================================================================
set nocompatible		" Disable compatibility with vi
"set filetype 
filetype plugin indent on	" File detection, plugin loading, indentation
set encoding=utf-8		" Encoding
set number				" Line numbering
set relativenumber		" Number lines relative to cursor
set laststatus=2		" Ensures the status line is always displayed.
set termguicolors		" Allows vim to use 'true colors'
set scrolloff=0			" nr of lines blow/above cursor in

"========================================================================
"================ COLORS ================================================
"========================================================================
"set colorcolumn=81
"highlight ColorColumn ctermbg=224 guibg=LightRed
syntax on

"========================================================================
"================ FORMATTING ============================================
"========================================================================
set tabstop=4		" Set tab width
set shiftwidth=4	" Set indenting to 2 spaces

"========================================================================
"================ REMAPPINGS ============================================
"========================================================================
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
inoremap jj <ESC>

"========================================================================
"================ SEARCH ================================================
"========================================================================
set incsearch	" Incrementally highlight search results
set ignorecase	" Ignore capital letters during search
set showmatch	" Show matching search results
set hlsearch	" Highlight search results

"========================================================================
"================ WILDMENU ==============================================
"========================================================================
set wildmenu				" Enable auto completion menu after TAB
set wildmode=list:longest	" Behave like Bash completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx
							" Ignore files with above extentions

"========================================================================
"=============== Vim Air-line and other plugins =========================
"========================================================================
" Call the .vimrc.plug file
" (if it exists, it will be loaded into memory)
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" Vim Air-line
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
" let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

