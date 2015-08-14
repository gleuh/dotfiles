.PHONY:all tmux git vim

all:vim git tmux

tmux-install-linux:
	mkdir -p ./install-tmux
	cd ./install-tmux && \
		wget http://downloads.sourceforge.net/project/levent/libevent/libevent-2.0/libevent-2.0.22-stable.tar.gz && \
		tar zxf libevent-2.0.22-stable.tar.gz && \
		cd libevent-2.0.22-stable && \
		./configure && make && \
		sudo make install
	cd ./install-tmux && \
		wget https://github.com/tmux/tmux/releases/download/2.0/tmux-2.0.tar.gz && \
		tar zxf tmux-2.0.tar.gz && \
		cd tmux-2.0 && \
		./configure && make && \
		sudo make install
	sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5
	rm -rf ./install-tmux

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
