#==========================================================================
# Source bashrc and aliases if present
#==========================================================================

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.current ]; then
  source ~/.current
fi


#==========================================================================
# basic settings
#==========================================================================

# set default editor
export EDITOR=vim

# Make ls use colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# user 256 colors
export TERM=xterm-256color

# tell compiler to always assume 64 bits
export ARCHFLAGS="-arch x86_64"

set -o noclobber
set -o vi

umask 022
#==========================================================================
# Git
#==========================================================================

# setup git prompt function, i.e., __git_ps1
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

function dirty_state {
    [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

#==========================================================================
# prompt
#==========================================================================

ORANGE='\[\033[0;33m\]'
RED='\[\e[1;31m\]'
NO_COLOR='\[\e[0m\]'
CURRENT_WORKING_DIR='\W'
GIT_BRANCH_NAME='$(__git_ps1)'
DIRTY_STATE='$(dirty_state)'

# assign new colorized prompt
export PS1="$ORANGE[$CURRENT_WORKING_DIR$GIT_BRANCH_NAME$RED$DIRTY_STATE$ORANGE]\$$NO_COLOR "

# assign new colored root prompt
export SUDO_PS1="$RED#$NO_COLOR "

#==========================================================================
# History
#==========================================================================

export HISTCONTROL=erasedups # remove duplicates
export HISTSIZE=10000 # increase the size
shopt -s histappend # append session commands to .bash_history

#==========================================================================
# set up bash completion
#==========================================================================

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
