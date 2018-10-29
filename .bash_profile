if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias gist="git status"
alias gilo="git log"
alias gich="git checkout"
alias gidi="git diff"
alias gipu="git pull"

export USER_REG_HOME=~/repos
PATH=$PATH:$USER_REG_HOME/user-infra/scripts

PATH=$PATH:~/repos/cp-tools/bin/
alias aws-dev-ls='listec2instancesWithAmi.sh hubsvc-dev'
alias aws-prd-ls='listec2instancesWithAmi.sh hubsvc-prd'

PATH=$PATH:~/.conscript/bin/
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export HISTCONTROL=ignoreboth:erasedups

eval "$(rbenv init -)"
export HISTCONTROL=ignoreboth:erasedups
eval "$(rbenv init -)"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/willbell/.sdkman"
[[ -s "/Users/willbell/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/willbell/.sdkman/bin/sdkman-init.sh"
