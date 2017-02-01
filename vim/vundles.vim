set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle "gmarik/Vundle.vim"

Bundle "altercation/vim-colors-solarized"
Bundle "itchyny/lightline.vim"

Bundle "tpope/vim-fugitive"
Bundle "mattn/gist-vim"

Bundle "scrooloose/syntastic"
Bundle "fatih/vim-go"
Bundle "derekwyatt/vim-scala"

Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"
Bundle "pbrisbin/vim-mkdir"

Bundle "vim-ruby/vim-ruby"
Bundle "tpope/vim-rails"

Bundle "rking/ag.vim"

call vundle#end()
filetype plugin indent on
