BOLD=$(tput bold)
NORMAL=$(tput sgr0)

# Variables
ROOT=$(pwd)

read -r -p "Are you sure? Please note: this will delete your ~/.vim folder and ~ dotfiles [y/N] " $REPLY

if [[ $REPLY =~ ^[Yy]$ ]]
  echo "Constructing Symlinks"

  for FILE in $ROOT/config/* 
  do
    FILENAME=$(basename $FILE)
    rm -rf ~/.$FILENAME

    ln -s $FILE ~/.$FILENAME

    echo "--- $BOLD$FILENAME$NORMAL"
  done

  echo "Done"
  echo "refreshing .vim"

  rm -rf ~/.vim
  ln -s "$ROOT/vim" ~/.vim
then
  echo "KBai"
fi
