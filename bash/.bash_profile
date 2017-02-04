if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source ~/.bash_vars

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
