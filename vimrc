set path+=**

set termguicolors
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set number
set wildmenu
set hidden
set showcmd
set hlsearch
set incsearch
set tabstop=4
set laststatus=2
set visualbell
set cmdheight=2

set backspace=indent,eol,start
set autoindent

set noswapfile
set nobackup

command! Q :q


syntax on

"	Mappings
nnoremap <C-L> :nohl<CR><C-L>

"	File based settings
filetype indent plugin on

"	File browser settings
let g:netrw_banner		= 0
let g:netrw_liststyle		= 3
