#!/bin/bash -e

if [ ! -d ~/.vim/bundle ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -u ~/.vim/vundles.vim +PluginClean! +PluginInstall! +qall

