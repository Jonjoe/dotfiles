BOLD=$(tput bold)
NORMAL=$(tput sgr0)

# Variables
ROOT=$(pwd)

echo "Constructing Symlinks"

for FILE in $ROOT/config/* 
do
  FILENAME=$(basename $FILE)
  rm -rf ~/.$FILENAME

  ln -s $FILE ~/.$FILENAME

  echo "--- $BOLD$FILENAME$NORMAL"
done

echo "DONE"
echo "Refreshing .vim"

rm -rf ~/.vim
ln -s "$ROOT/vim" ~/.vim

dos2unix /mnt/c/Users/me/Dotfiles/vim/bundle/**/*
vim +PluginInstall +qall
dos2unix /mnt/c/Users/me/Dotfiles/vim/bundle/**/*

echo "DONE"
