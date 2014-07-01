filetype plugin indent on
syntax on

set t_Co=256
set background=dark
colorscheme default 

set nocompatible
set showcmd		
set showmatch		
set incsearch		
set autowrite		
set hidden             
set mouse=a		
set wildmenu
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab 
set hlsearch
set modeline
set ls=2
set nu
set nobackup
set noswapfile

set cc=80
hi ColorColumn ctermbg=darkgray
hi LineNr ctermfg=darkgray

let html_no_rendering = 1

let g:netrw_liststyle = 3
noremap ° :tabp<cr>
noremap <S-TAB> :tabn<cr>
noremap <F2> :Texplore<cr>

