# Variables
NORMAL=$(tput sgr0)
BOLD=$(tput bold)
ROOT=$(pwd)

sudo yum install zsh

if [ ! -d "~/.nvm" ]; then
	echo '=== NVM is not installed ... installing it'
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
fi

if [ ! -d "~/.rbenv" ]; then
	echo '=== Rbenv is not installed ... installing it'
	git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	cd ~/.rbenv && src/configure && make -C src
fi

if [ ! -d "~/.fzf" ]; then
	echo '=== Fzf is not installed ... installing it'
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
fi

if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
	echo '=== Vim Vundle is not installed ... installing it'
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -d "~/.oh-my-zsh" ]; then
	echo '=== OhMyZSH is not installed ... installing it'
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

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

