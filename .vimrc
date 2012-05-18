set encoding=utf-8
set t_Co=256
filetype plugin indent on
filetype on

let mapleader = ","
let g:mapleader = ","

syntax enable

set number
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

map <leader>w :w<CR>
map <leader>q :q!<CR>
map <leader>ta :tabe 
map <leader>v :vsp 

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Search term=bold cterm=NONE ctermfg=NONE ctermbg=DarkGrey gui=NONE guifg=NONE guibg=DarkGrey
