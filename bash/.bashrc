prompt() {
    color_base="\[\e[0m\]"
    color_grey="\[\e[0;90m\]"
    color_green="\[\e[0;32m\]"
    color_yellow="\[\e[0;33m\]"
    git_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

    base="${color_grey}\T ${color_green}\w${color_base}"

    if [[ $(git status 2> /dev/null | tail -n1) = "nothing to commit, working directory clean" ]]
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

export EDITOR=vim

PATH=$PATH:/usr/local/bin

# aliases
alias ls='ls -G'
alias ctags-generate='docker run -it --rm -v $PWD:/app herzult/composer-ctags'

# external sources
source ~/dotfiles/bash/git-completion.bash
