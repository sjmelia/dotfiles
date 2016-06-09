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
autocmd BufRead,BufNewFile *.rs set filetype=rust
autocmd FileType rust set ts=4 et sw=4 sts=4 tw=80

if has("win32")
	set guifont=Consolas:h10
endif

" autocmd vimenter * NERDTree
set modeline
set modelines=5
