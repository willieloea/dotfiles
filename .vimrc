" #########################################
" #██╗   ██╗██╗███╗   ███╗██████╗  ██████╗#
" #██║   ██║██║████╗ ████║██╔══██╗██╔════╝#
" #██║   ██║██║██╔████╔██║██████╔╝██║     #
" #╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     #
" # ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗#
" #  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝#
" #########################################

set nocompatible
filetype plugin indent on
set encoding=utf-8
set number
set relativenumber
set laststatus=2
set termguicolors
set scrolloff=0

"=== COLORS ==="
"set colorcolumn=81
"highlight ColorColumn ctermbg=224 guibg=LightRed
syntax on

"=== FORMATTING ==="
set tabstop=4
set shiftwidth=4

"=== REMAPPINGS ==="
inoremap jj <ESC>

"=== SEARCH ==="
set incsearch
set ignorecase
set showmatch
set hlsearch

"=== WILDMENU ==="
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx

"=== Vim Air-line and other plugins ==="
" Plugin directory is optional
call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


if exists('*plug#begin') && filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

if exists(':AirlineToggle')
    let g:airline_theme='onedark'
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_left_sep = '»'
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = '«'
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
endif
