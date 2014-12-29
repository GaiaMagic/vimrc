#!/usr/bin/env bash

if [ -f ~/.vimrc ]; then
  echo "Backup original .vimrc to ~/.vimrc_backup"
  mv ~/.vimrc ~/.vimrc_backup
fi

if [ -d ~/.vim ]; then
  echo "Backup original .vim to ~/.vim_backup"
  mv ~/.vim ~/.vim_backup
fi

git clone https://github.com/GaiaMagic/vimrc.git ~/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

sh ~/.vim/deploy.sh
reset
