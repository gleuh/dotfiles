prompt() {
    color_base="\[\e[0m\]"
    color_grey="\[\e[0;90m\]"
    color_green="\[\e[0;32m\]"
    color_yellow="\[\e[0;33m\]"
    git_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

    base="${color_grey}\T ${color_green}\w${color_base}"

    if [[ $(git status 2> /dev/null | tail -n1) = "nothing to commit, working directory clean" ]] || [[ $(git status 2> /dev/null | tail -n1) = "nothing to commit, working tree clean" ]]
    then
        dirty="";
    else
        dirty="*";
    fi

    if [ -z "$git_branch" ]
    then
        git="";
    else
        git=" ${color_yellow}(${git_branch}${dirty})${color_base}"
    fi

    PS1="${base}${git} \$ "
}
PROMPT_COMMAND=prompt

# export ENVs
export EDITOR=vim
export THEFORK_WORKSPACE=/Users/guillaume/www
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

PATH=$PATH:/usr/local/bin

ssh-add ~/.ssh/id_rsa

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# aliases
alias ls='ls -G'
alias ctags-generate='docker run -it --rm -v $PWD:/app herzult/composer-ctags'
alias twgit="/usr/bin/env PATH=${HOME}/.local/installs/homebrew/bin:${HOME}/.local/scripts:${PATH} ~/.local/scripts/twgit"

# external sources
source ~/dotfiles/bash/git-completion.bash
