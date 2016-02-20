#!/bin/bash

# Inits
export NVM_DIR=~/.nvm
export PATH="$HOME/.rbenv/bin:$PATH"
. $(brew --prefix nvm)/nvm.sh
eval "$(rbenv init -)"

. ~/dotfiles/scripts/git-prompt.sh
PS1="\[\033[0;92m\]\w\[\033[0m\]\[\033[0;97m\]\[\033[0m\]\$(__git_ps1) "
cd ~/Code

# Custom Scripts
for SCRIPT in ~/dotfiles/autorun/*
do
  sh $SCRIPT
done
