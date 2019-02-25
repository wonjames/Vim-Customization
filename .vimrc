"Color Stuff
colorscheme personal
autocmd FileType html colorscheme personal
"If it wasn't explicitly stated to use default colors, use the ones I have
"listed
if !exists("g:syntax_on")
	    syntax enable
endif
"------------------------------------------------------------------------------------
"Setting things to make life easier
set number		"sets line numbers
"set spell		"sets spell checker
set splitbelow
set splitright
set clipboard=unnamedplus
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hlsearch		" highlights matches when searching for words

"Set to enable 256 colors for vim to work in tmux using csApprox
set t_Co=256
autocmd FileType html :setlocal sw=2 ts=2 sts=2 " Two spaces for HTML files "
autocmd FileType python :setlocal shiftwidth=4 tabstop=4 softtabstop=0

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
Plug 'scrooloose/nerdtree'
call plug#end()
"-------------------------------------------------------------------------------------
" If two files are loaded, switch to the alternate file, then back.
" That sets # (the alternate file).
if argc() == 2
  n
  e #
endif

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
 
" Adds a new line by pressing enter while in normal mode and stays in normal
" mode
:nnoremap <Enter> o<Space><Esc>

" Allows Ctrl-Backspace to delete previous word in insert mode
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

"autocompletes the matching curly brace and auto-indents after hitting enter
inoremap {<CR> {<CR>}<Esc>==O
