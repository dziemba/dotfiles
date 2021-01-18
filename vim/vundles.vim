set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle "VundleVim/Vundle.vim"

" UI
Bundle "altercation/vim-colors-solarized"
Bundle "itchyny/lightline.vim"

" Git
Bundle "tpope/vim-fugitive"

" Languages / Syntax
Bundle "scrooloose/syntastic"
Bundle "fatih/vim-go"
Bundle "derekwyatt/vim-scala"
Bundle "vim-ruby/vim-ruby"

" Files
Bundle "scrooloose/nerdtree"
Bundle "ctrlpvim/ctrlp.vim"

" Search
Bundle "mileszs/ack.vim"

call vundle#end()
filetype plugin indent on
