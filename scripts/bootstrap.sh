#!/bin/bash

#initalise the submodules
git submodule init
git submodule update

#Download oh-my-zsh if not exists
if [ -d ~/.oh-my-zsh ]
then
  git clone http://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

#Copy my style into the template
cp sambuca.zsh-theme ~/.oh-my.zsh/themes

#Set up the links
ln -s .zshrc ~/.zshrc
ln -s .vimrc ~/.vimrc
ln -s .vim ~/.vim
ln -s .tmux.conf ~/.tmux.conf
