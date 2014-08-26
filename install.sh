#!/bin/sh


# submodule
cd ~/dotfiles
git submodule init
git submodule update
cd --

# TMUX
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# ZSH
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
sudo chsh -s /bin/zsh $USER

if [ "$1" = "visual" ]
    then
    # sublime text
    cd ~/Library/Application\ Support/Sublime\ Text\ 3/
    rm -rf ./Installed\ Packages
    rm -rf ./Packages
    ln -s ~/dotfiles/sublime-text-3/Installed\ Packages ./Installed\ Packages
    ln -s ~/dotfiles/sublime-text-3/Packages ./Packages
    cd --
fi
