set nocompatible

filetype plugin indent on
syntax on

set number
set showcmd
set showmatch
set showmode
set autoread
set hidden
set mouse=a
set wildmenu
set encoding=utf-8
set hlsearch
set modeline
set ignorecase
set smartcase
set backspace=2

set tabstop=2
set shiftwidth=2
set expandtab
set ls=2
set autoindent
set smartindent

set nobackup
set noswapfile

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set clipboard=unnamed

let mapleader=","

set cc=100
hi ColorColumn ctermbg=darkgray
hi LineNr ctermfg=darkgray

let html_no_rendering = 1

noremap ° :tabp<cr>
noremap <S-TAB> :tabn<cr>
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nmap <silent> // :nohlsearch<CR>

autocmd BufWritePre * :%s/\s\+$//e

source ~/.vim/vundles.vim
source ~/.vim/settings.vim

