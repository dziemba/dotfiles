#!/bin/bash -e

cd $HOME/.dotfiles

./link.sh
./packages.sh
./config.sh
./vim.sh

