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
Bundle "pangloss/vim-javascript"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "groenewege/vim-less"
Bundle "itspriddle/vim-jquery"
Bundle "jtratner/vim-flavored-markdown"
Bundle "kchmck/vim-coffee-script"
Bundle "tpope/vim-haml"
Bundle "fatih/vim-go"
Bundle "slim-template/vim-slim"
Bundle "elixir-lang/vim-elixir"
Bundle "derekwyatt/vim-scala"
Bundle "Raimondi/delimitMate"
Bundle "leafgarland/typescript-vim"

Bundle "jistr/vim-nerdtree-tabs"
Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"
Bundle "pbrisbin/vim-mkdir"

Bundle "vim-ruby/vim-ruby"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-rake"
Bundle "Keithbsmiley/rspec.vim"
Bundle "tpope/vim-bundler"

Bundle "justinmk/vim-sneak"
Bundle "rking/ag.vim"
Bundle "vim-scripts/IndexedSearch"
Bundle "nelstrom/vim-visual-star-search"
Bundle "skwp/greplace.vim"

call vundle#end()
filetype plugin indent on
