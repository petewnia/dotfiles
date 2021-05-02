#!/bin/bash

mkdir $HOME/Repositories/dotfiles/.vim/vimbackups
mkdir $HOME/Repositories/dotfiles/.vim/vimundo

ln -s $HOME/Repositories/dotfiles/.zshrc $HOME
ln -s $HOME/Repositories/dotfiles/.vim $HOME
ln -s $HOME/Repositories/dotfiles/.tmux.conf $HOME
ln -s $HOME/Repositories/dotfiles/.config $HOME
ln -s $HOME/Repositories/dotfiles/.bashrc $HOME
ln -s $HOME/Repositories/dotfiles/.bashprofile $HOME

tic $HOME/Repositories/dotfiles/xterm-256color-italic.terminfo

tic $HOME/Repositories/dotfiles/tmux.terminfo
