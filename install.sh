#!/bin/bash

# make vim directories
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/swp
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/syntax
mkdir -p $HOME/.vim/ftplugin
mkdir -p $HOME/.vim/after/ftplugin

# vim plug installation
read -p "wanna install bspwm ? y/n " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]] ; then
  mkdir -p $HOME/.config/bspwm
  mkdir -p $HOME/.config/sxhkd
  ln -s $HOME/mas/bspwmrc $HOME/.config/bspwm/bspwmrc
  ln -s $HOME/mas/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
fi
printf "\n"

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
ln -s $HOME/mas/home/.screenrc $HOME/.screenrc
ln -s $HOME/mas/home/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/mas/home/.Xresources $HOME/.Xresources
ln -s $HOME/mas/vim/syntax/c.vim $HOME/.vim/syntax/c.vim
ln -s $HOME/mas/vim/syntax/motizium.vim $HOME/.vim/syntax/motizium.vim
ln -s $HOME/mas/vim/syntax/text.vim $HOME/.vim/syntax/text.vim
ln -s $HOME/mas/vim/syntax/javascript.vim $HOME/.vim/syntax/javascript.vim
ln -s $HOME/mas/vim/filetype.vim $HOME/.vim/filetype.vim
ln -s $HOME/mas/start.sh $HOME/bin/start
ln -s $HOME/mas/vim/ftplugin/text.vim $HOME/.vim/ftplugin/text.vim
ln -s $HOME/mas/vim/after/ftplugin/text.vim $HOME/.vim/after/ftplugin/text.vim
