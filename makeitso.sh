#!/bin/bash

# .makeitso.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# - Variables
DIR=~/Dotfiles                    # dotfiles directory
OLDDIR=~/Dotfiles_old             # old dotfiles backup directory
FILES="zshrc tmux.conf hyper.js"       # list of files/folders to symlink in homedir



# - create Dotfiles_old in homedir
echo "Creating $OLDDIR for backup of any existing dotfiles in ~"
mkdir -p $OLDDIR
echo "...done"

# change to the Dotfiles directory
echo "Changing to the $DIR directory"
cd $DIR
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for FILE in $FILES; do
    echo "Moving any existing dotfiles from ~ to $OLDDIR"
    mv ~/.$FILE $OLDDIR
    echo "Creating symlink to $FILE in home directory."
    ln -s $DIR/$FILE ~/.$FILE
done

rm -rf ~/.vim
ln -s "$DIR/vim" ~/.vim
rm -rf $OLDDIR
