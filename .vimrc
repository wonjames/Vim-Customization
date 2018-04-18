"Color Stuff

"colorscheme onedark
"colorscheme falcon
colorscheme personal
"See ~/.vim/colors/personal.vim for my own colorscheme

"If it wasn't explicitly stated to use default colors, use the ones I have
"listed
if !exists("g:syntax_on")
	    syntax enable
endif

"------------------------------------------------------------------------------------
"Setting things to make life easier
set number
set spell
set splitbelow
set splitright
set clipboard=unnamedplus
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
"set nocompatible
"Set to enable 256 colors for vim to work in tmux using csApprox
set t_Co=256
set nostartofline
"Scrolling starts 5 lines away from the top/bottom of the page
if !&scrolloff
	set scrolloff=5
endif
if !&sidescrolloff
	set sidescrolloff=5
endif
"-------------------------------------------------------------------------------------
" calls the plugins installed in the .vim/plugged
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'godlygeek/csapprox'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-vinegar'
"Plug 'LucHermitte/vim-build-tools-wrapper'
Plug 'vimplugin/project.vim'
"Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'dsalychev/firesparks'
Plug 'fenetikm/falcon'
call plug#end()
"-------------------------------------------------------------------------------------
"powerline symbols
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
