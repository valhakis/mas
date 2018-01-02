#!/bin/bash

# make vim directories
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/swp
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/syntax

# vim plug installation
read -p "wanna install plug ? y/n " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]] ; then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
printf "\n"

# nvm installation
read -p "wanna install nvm ? y/n " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]] ; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
fi
printf "\n"

# create dynamic links
ln -s $HOME/mas/vim/init.vim $HOME/.vimrc
ln -s $HOME/mas/home/.bashrc $HOME/.bashrc
ln -s $HOME/mas/home/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/mas/vim/syntax/c.vim $HOME/.vim/syntax/c.vim
