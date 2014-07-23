#!/bin/bash -e

cd $HOME
ln -sf .dotfiles/bashrc .bashrc
ln -sf .dotfiles/bashrc .bash_profile
ln -sf .dotfiles/gitconfig .gitconfig
ln -sf .dotfiles/vimrc .vimrc

mkdir -p .atom
ln -sf ../.dotfiles/atom/config.cson .atom/config.cson
ln -sf ../.dotfiles/atom/keymap.cson .atom/keymap.cson

