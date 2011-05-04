#!/bin/bash

# Load credentials, sets a few environment variables
# used e.g. in the Mutt config.
#
# Sets the following variables (not in the Git tree :-)
# USERNAME=""
# PASSWORD1=""
# PASSWORD2=""
# EMAIL=""
# FULLNAME=""
. ~/.credentials

# Load colors
. ~/.colors

# Load functions
. ~/.bash/functions

# Vi Bash command mode
set -o vi

# Notify immediatly on bg job completion
set -o notify

# Case insensitive
shopt -s nocaseglob

# Setting up editor 
export EDITOR=/usr/bin/vim

# Setting pager to the vimpager
export PAGER=vimpager
alias less=$PAGER

# Add user bins to path
export PATH=$PATH:~/.bin:/usr/local/bin:/usr/local/lib/node

# Load Git completion
. ~/.git_completion

# Load PS1 theme
. ~/.bash/theme

# Load aliases at end to not conflict with anything
. ~/.bash/aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
