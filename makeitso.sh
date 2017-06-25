#!/bin/bash

# Variables
NORMAL=$(tput sgr0)
BOLD=$(tput bold)
ROOT=$(pwd)

sudo apt-get install zsh

if [ ! -d ~/.nvm ]; then
	NVM_STATUS="NVM: Installed"
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
else
	NVM_STATUS="NVM: Already installed"
fi

if [ ! -d ~/.rbenv ]; then
	RBENV_STATUS="Rbenv: Installed"
	git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	cd ~/.rbenv && src/configure && make -C src
else
	RBENV_STATUS="Rbenv: Already installed"
fi

if [ ! -d ~/.fzf ]; then
	FZF_STATUS="Fzf: Installed"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
else
	FZF_STATUS="Fzf: Already installed"
fi

rm -rf ~/.vim
ln -s "$ROOT/vim" ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	VUNDLE_STATUS="Vundle: Installed."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	VUNDLE_STATUS="Vundle: Already installed."
fi

if [ ! -d ~/.oh-my-zsh ]; then
	OMZ_STATUS="OhMyZsh: Installed"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
	OMZ_STATUS="OhMyZsh: Already installed"
fi

echo "Constructing Symlinks"
cd $ROOT
for FILE in $ROOT/config/*
do
  rm -rf ~/.$(basename $FILE)
  ln -s $FILE ~/.$(basename $FILE)
  echo "--- $BOLD$(basename $FILE)$NORMAL"
done
echo "Done"

echo "Tooling installs"
echo "--- $NVM_STATUS"
echo "--- $RBENV_STATUS"
echo "--- $FZF_STATUS"
echo "--- $VUNDLE_STATUS"
echo "--- $OMZ_STATUS"
echo "Done"

echo "FINISHED"