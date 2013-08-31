#!/usr/bin/env bash

if [ -f ~/.vimrc ]; then
  echo "Bacup your original .vimrc to ~/.vimrc_backup"
  mv ~/.vimrc ~/.vimrc_backup
fi

if [ -d ~/.vim ]; then
  echo "Bacup your original .vim to ~/.vim_backup"
  mv ~/.vim ~/.vim_backup
fi

git clone https://github.com/GaiaMagic/vimrc.git ~/.vim

sh ~/.vim/deploy.sh
