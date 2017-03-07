.PHONY:all editorconfig git vim zsh hyper

all: editorconfig git vim zsh hyper

editorconfig:
	rm -f ~/.editorconfig
	ln -s ~/dotfiles/editorconfig/editorconfig ~/.editorconfig

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

zsh:
	rm -rf ~/.zshrc
	ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

hyper:
	rm -rf ~/.hyper.js
	ln -s ~/dotfiles/.hyper.js ~/.hyper.js