#!/bin/bash

## create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

cp ~/.zshrc .
cp ~/.vimrc .
cp ~/.tmux.conf .
cp -r ~/.config/nvim .nvim

git pull
git add --all
git commit -m "Update : $(timestamp)"
git push
