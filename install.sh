#!/bin/bash -e

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cd $HOME/.dotfiles

./link.sh
./packages.sh
./config.sh
./vim.sh
./iterm.sh

