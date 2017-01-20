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
autocmd FileType json set ts=2 et sw=2 sts=2 tw=80
" Google java styleguide
" https://google.github.io/styleguide/javaguide.html#s4.1.2-blocks-k-r-style
autocmd FileType java set ts=2 et sw=2 sts=2 tw=80
autocmd FileType cs set ts=4 et sw=4 sts=4 tw=80
autocmd BufRead,BufNewFile *.rs set filetype=rust
autocmd FileType rust set ts=4 et sw=4 sts=4 tw=80
autocmd FileType html set ts=2 et sw=2 sts=2 tw=80
autocmd FileType xml set ts=2 et sw=2 sts=2 tw=80
autocmd FileType javascript set ts=2 et sw=2 sts=2 tw=80

if has("win32")
	set guifont=Consolas:h10
endif

" autocmd vimenter * NERDTree
" Map Ctrl+N to open the NERDTree sidebar
nmap <silent> <c-n> :NERDTreeToggle<cr>
autocmd vimenter * if !argc() | NERDTree | endif

" mouse support
set ttyfast
set mouse=vn
set ttymouse=xterm2

set modeline
set modelines=5

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
