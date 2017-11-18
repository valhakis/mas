#!/bin/bash

# make vim directories
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/swp
mkdir -p $HOME/.vim/backup

# vim plug installation
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create dynamic links
ln -s $HOME/mas/vim/init.vim $HOME/.vimrc
ln -s $HOME/mas/home/.bashrc $HOME/.bashrc
ln -s $HOME/mas/home/.tmux.conf $HOME/.tmux
