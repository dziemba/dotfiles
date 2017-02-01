#!/bin/bash -e

cd $HOME
ln -sf .dotfiles/bashrc .bashrc
ln -sf .dotfiles/bashrc .bash_profile
ln -sf .dotfiles/gemrc .gemrc
mkdir -p .config/htop
ln -sf ../../.dotfiles/htoprc .config/htop/htoprc
ln -sf .dotfiles/gitconfig .gitconfig
ln -sf .dotfiles/gitignore .gitignore_global
ln -sf .dotfiles/vimrc .vimrc
rm -rf .vim
ln -sf .dotfiles/vim .vim

mkdir -p /usr/local/etc
ln -sf $HOME/.dotfiles/dnsmasq.conf /usr/local/etc/dnsmasq.conf
ln -sf $HOME/.dotfiles/iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist
