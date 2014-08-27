set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle "gmarik/Vundle.vim"

Bundle "altercation/vim-colors-solarized"
Bundle "itchyny/lightline.vim"

Bundle "gregsexton/gitv"
Bundle "mattn/gist-vim"
Bundle "tpope/vim-fugitive"

Bundle "pangloss/vim-javascript"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "groenewege/vim-less.git"
Bundle "itspriddle/vim-jquery.git"
Bundle "jtratner/vim-flavored-markdown.git"
Bundle "kchmck/vim-coffee-script"
Bundle "scrooloose/syntastic.git"
Bundle "nelstrom/vim-markdown-preview"
Bundle "skwp/vim-html-escape"
Bundle "tpope/vim-haml"

Bundle "jistr/vim-nerdtree-tabs.git"
Bundle "scrooloose/nerdtree.git"
Bundle "kien/ctrlp.vim"

Bundle "ecomba/vim-ruby-refactoring"
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-rake.git"
Bundle "tpope/vim-rvm.git"
Bundle "vim-ruby/vim-ruby.git"
Bundle "Keithbsmiley/rspec.vim"
Bundle "skwp/vim-iterm-rspec"
Bundle "skwp/vim-spec-finder"
Bundle "ck3g/vim-change-hash-syntax"
Bundle "tpope/vim-bundler"

Bundle "justinmk/vim-sneak"
Bundle "rking/ag.vim"
Bundle "vim-scripts/IndexedSearch"
Bundle "nelstrom/vim-visual-star-search"
Bundle "skwp/greplace.vim"
Bundle "Lokaltog/vim-easymotion"

Bundle "austintaylor/vim-indentobject"
Bundle "bootleq/vim-textobj-rubysymbol"
Bundle "coderifous/textobj-word-column.vim"
Bundle "kana/vim-textobj-datetime"
Bundle "kana/vim-textobj-entire"
Bundle "kana/vim-textobj-function"
Bundle "kana/vim-textobj-user"
Bundle "lucapette/vim-textobj-underscore"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "thinca/vim-textobj-function-javascript"
Bundle "vim-scripts/argtextobj.vim"

Bundle "AndrewRadev/splitjoin.vim"
Bundle "Raimondi/delimitMate"

call vundle#end()
filetype plugin indent on

