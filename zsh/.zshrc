export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"
plugins=(git symfony2 tmux)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export SSH_KEY_PATH="~/.ssh/dsa_id"

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ "$TERM" = "xterm" ]
then
    export TERM=xterm-256color
fi
