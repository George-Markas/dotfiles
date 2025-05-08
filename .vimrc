" Some options
set nocompatible
set t_Co=256
syntax enable
set number
filetype indent on
set nohlsearch
set incsearch
set ignorecase
set ruler
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nowrap
set belloff=all

" Change cursor based on mode 
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode
