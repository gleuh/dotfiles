.PHONY:all sublime editorconfig tmux git vim

all:sublime editorconfig tmux git vim

sublime:
	rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*
	ln -s ~/dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
	ln -s ~/dotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
	ln -s ~/dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

editorconfig:
	rm -f ~/.editorconfig
	ln -s ~/dotfiles/editorconfig/editorconfig ~/.editorconfig

tmux:
	rm -f ~/.tmux.conf
	ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

git:
	rm -f ~/.gitconfig
	ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s ~/dotfiles/.vimrc ~/.vimrc
	ln -s ~/dotfiles/.vim ~/.vim
	vim +PluginInstall +qall
