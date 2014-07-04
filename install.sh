#!/bin/bash -e

cd $HOME/.dotfiles

./link.sh
brew bundle
apm install go-plus
./config.sh

