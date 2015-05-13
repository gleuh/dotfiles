.PHONY:all tmux git vim

all:vim git tmux

tmux:
	rm -f ~/.tmux.conf
	ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

git:
	rm -f ~/.gitconfig
	ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s ~/dotfiles/.vimrc ~/.vimrc
	ln -s ~/dotfiles/.vim ~/.vim
	vim +PluginInstall +qall
