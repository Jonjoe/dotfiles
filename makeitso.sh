# Variables
NORMAL=$(tput sgr0)
BOLD=$(tput bold)
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

echo "DONE"
