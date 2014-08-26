#!/bin/sh

cd ~

# TMUX
ln -s ./dotfiles/tmux/tmux.conf ./.tmux.conf

if [ "$1" = "visual" ]
    then
    # sublime text
    ln -s ./dotfiles/sublime-text-3/Installed\ Packages ./Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
    ln -s ./dotfiles/sublime-text-3/Packages ./Library/Application\ Support/Sublime\ Text\ 3/Packages
fi