#!/bin/bash -e

cd $HOME
ln -sf .dotfiles/bashrc .bashrc
ln -sf .dotfiles/bashrc .bash_profile
rm -rf .vim
ln -sf .dotfiles/vim .vim
ln -sf .dotfiles/vimrc .vimrc
ln -sf .dotfiles/gitconfig .gitconfig
