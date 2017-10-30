# don't put duplicates lines or lines starting with a space in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
   xterm-color|*-256color) color_prompt=yes;;
esac

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Global variables
export PS1="\[\033[38;5;228m\]\u \[\033[38;5;202m\]\w\[\033[36m\]\$(__git_ps1) \[\033[33m\]> \[\033[0m\]"

# Z bash
# Remember to install https://github.com/rupa/z
. ~/Software/z-master/z.sh

# Enable ls coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git branch autocompletion
# Remember to install https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# thefuck
# Rememeber to install https://github.com/nvbn/thefuck
eval $(thefuck --alias ff)
