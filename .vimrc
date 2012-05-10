set encoding=utf-8
filetype plugin indent on

filetype on

syntax enable

set wildmenu
set wildmode=list:longest,full
set ignorecase
set smartcase
set incsearch
set hlsearch
set cursorline
set autoread

set splitright

map = gt
map - gT
map <F5> :%s/
map <space> /

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

map <C-N> 5j
map <C-P> 5k

if exists('+colorcolumn')
	set colorcolumn=80
endif

set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
