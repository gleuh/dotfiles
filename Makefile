.PHONY:all zsh tmux git vim

all:vim git zsh tmux

zsh:
	rm -f ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
	ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
	bash -c "sudo chsh -s /bin/zsh $(USER)"

tmux:
	rm -f ~/.tmux.conf
	ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

git:
	rm -f ~/.gitconfig
	ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
	ln -s ~/dotfiles/vim/.vim ~/.vim
	vim +PluginInstall +qall
