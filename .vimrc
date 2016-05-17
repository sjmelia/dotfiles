scriptencoding utf-8
set encoding=utf-8
setglobal fileencoding=utf-8

call pathogen#infect()
call pathogen#helptags()

set t_Co=256
colors zenburn

set number
set nowrap
set autoindent
set ruler
set showmode
set incsearch
set showmatch
set hlsearch
set noerrorbells
set visualbell
set nowrap
set backspace=2
syntax on
filetype plugin indent on

if has("win32")
	set guifont=Consolas:h10
endif

" Map Ctrl+N to open the NERDTree sidebar
nmap <silent> <c-n> :NERDTreeToggle<cr>
autocmd vimenter * if !argc() | NERDTree | endif

" mouse support
set ttyfast
set mouse=vn
set ttymouse=xterm2

set modeline
set modelines=5
