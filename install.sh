#!/bin/sh

# submodule
cd ./dotfiles
git submodule init
git submodule update
cd --

# TMUX
ln -s ./dotfiles/tmux/tmux.conf ./.tmux.conf

# ZSH
ln -s ./dotfiles/zsh/zshrc ./.zshrc
ln -s ./dotfiles/oh-my-zsh ./.oh-my-zsh

