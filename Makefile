.PHONY:all editorconfig tmux git vim bash sublime

all:editorconfig tmux git vim bash sublime

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
	rm -rf ~/.bashrc ~/.bash_profile ~/.bash_vars
	ln -s ~//dotfiles/bash/.bashrc ~/.bashrc
	ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
	ln -s ~/dotfiles/bash/bash_vars ~/.bash_vars


sublime:
	rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*
	ln -s ~/dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
	ln -s ~/dotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
	ln -s ~/dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
