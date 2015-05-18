#!/bin/bash -e

cd $HOME
ln -sf .dotfiles/bashrc .bashrc
ln -sf .dotfiles/bashrc .bash_profile
ln -sf .dotfiles/gemrc .gemrc
ln -sf .dotfiles/gitconfig .gitconfig
ln -sf .dotfiles/gitignore .gitignore_global
ln -sf .dotfiles/vimrc .vimrc
rm -rf .vim
ln -sf .dotfiles/vim .vim

ln -sf $HOME/.dotfiles/dnsmasq.conf /usr/local/etc/dnsmasq.conf

cp .dotfiles/keepassxkeepassx2.ini Library/Application\ Support/keepassxkeepassx2.ini

