call pathogen#infect()
call pathogen#helptags()

colors zenburn
set number

set noerrorbells
set visualbell
set nowrap
syntax on
set backspace=2

if has("win32")
	set guifont=Consolas:h10
endif

autocmd vimenter * NERDTree
