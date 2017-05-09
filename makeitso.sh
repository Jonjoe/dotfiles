#!/bin/bash

# .makeitso.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

BOLD=$(tput bold)
NORMAL=$(tput sgr0)

# - Variables
DIR=~/Dotfiles                               # dotfiles directory
OLDDIR=~/Dotfiles_old                        # old dotfiles backup directory
FILES="zshrc tmux.conf hyper.js vimrc"       # list of files/folders to symlink in homedir

# change to the Dotfiles directory
cd $DIR

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
echo "Constructing Symlinks"
for FILE in $FILES; do
    rm -rf ~/.$FILE
    ln -s $DIR/$FILE $HOME/.$FILE
    echo " --- $BOLD$FILE$NORMAL"
done
echo "Done"

rm -rf $HOME/.vim
ln -s "$DIR/vim" $HOME/.vim
rm -rf $OLDDIR
