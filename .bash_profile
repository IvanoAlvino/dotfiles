# Colors
export YELLOW="\e[0;33m"
export PURPLE="\e[0;35m"
export LIGHT_BLUE="\e[0;36m"
export BLUE="\e[0;34m"
export END_COLOR="\e[m"

# Global variables
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\n$YELLOW\u$END_COLOR[$PURPLE\w$END_COLOR] $LIGHT_BLUE\$(parse_git_branch)$END_COLOR\n$BLUE$ $END_COLOR"

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Alias
alias ll="ls -alF"
alias cc="clear"
alias cd..="cd .."

# Git alias
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gll='git log --oneline -5'
alias gl='git log'
alias gf='git fetch'
alias gp='git pull'

# Executables
alias splitup="java -jar /Users/ivano/Executables/SplitUP.jar"
