# Git aliases
alias g="git"
alias gll="git log --pretty=format:\"%C(yellow)%h %C(green)%s%C(cyan) [%cn]\" --decorate -5"
alias gls="git log --pretty=format:\"%C(yellow)%h %C(green)%s %C(cyan)[%cn]\" --decorate --numstat -5"
alias gg="git log --graph --oneline --decorate --all"

# General aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
   alias ls='ls --color=auto'
   alias grep='grep --color=auto'
   alias fgrep='fgrep --color=auto'
   alias egrep='egrep --color=auto'
fi
