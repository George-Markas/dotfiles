" Options
set nocompatible

set number
set relativenumber
set cursorline
set colorcolumn=80
set scrolloff=10
set showmatch
set ruler

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set nowrap

set hlsearch
set incsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set encoding=utf8
set clipboard=unnamedplus

set t_Co=256
syntax on
colorscheme habamax

" Keybinds
let mapleader=" "

nnoremap <silent> <Esc> :noh<CR><Esc>

nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap x "_x
vnoremap x "_x
