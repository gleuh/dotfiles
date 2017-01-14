.PHONY:all editorconfig tmux git vim bash

all:editorconfig tmux git vim bash

editorconfig:
	rm -f ~/.editorconfig
	ln -s ~/dotfiles/editorconfig/editorconfig ~/.editorconfig

tmux:
	rm -f ~/.tmux.conf
	ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

git:
	rm -f ~/.gitconfig
	ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
	rm -f ~/.gitignore_global
	ln -s ~/dotfiles/git/gitignore ~/.gitignore_global

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s ~/dotfiles/vimrc ~/.vimrc
	ln -s ~/dotfiles/vim ~/.vim
	vim +PluginInstall +qall

bash:
	rm -rf ~/.bashrc ~/.bash_profile
	ln -s ~//dotfiles/bash/.bashrc ~/.bashrc
	ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
