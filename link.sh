#!/bin/bash -e

cd $HOME
ln -sf .dotfiles/bashrc .bashrc
ln -sf .dotfiles/bashrc .bash_profile
ln -sf .dotfiles/gemrc .gemrc
ln -sf .dotfiles/gitconfig .gitconfig
ln -sf .dotfiles/gitignore .gitignore_global
ln -sf .dotfiles/vimrc .vimrc
ln -sf .dotfiles/rubocop.yml .rubocop.yml

mkdir -p .atom
ln -sf ../.dotfiles/atom/config.cson .atom/config.cson
ln -sf ../.dotfiles/atom/keymap.cson .atom/keymap.cson

cp .dotfiles/keepassxkeepassx2.ini Library/Application\ Support/keepassxkeepassx2.ini

