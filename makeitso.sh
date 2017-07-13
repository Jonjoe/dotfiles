#!/bin/bash

# Base Variables -----------------------------------------------------------------------
NORMAL=$(tput sgr0)
BOLD=$(tput bold)
ROOT=$(pwd)

# Functions ----------------------------------------------------------------------------

# Decide what operating sytsem we are using.
# Returns STRING ['Windows' | 'Ubuntu']
hostOSCheck() {
	local  __passed_var=$1	

	local WINDOWS=/mnt/c/Users
	local UBUNTU=$(grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}')
	
	if [ -d "$WINDOWS" ]; then
		local  returned_value='Windows'
	else 
		if [ "$UBUNTU" = "Ubuntu" ]; then
			local  returned_value='Ubuntu'
		else
			local  returned_value='Unknown'
		fi
	fi

	eval $__passed_var="'$returned_value'"	
}

# Operating system specific actions ----------------------------------------------------

echo ""
echo "Host OS Check"
hostOSCheck HOST_OS
if [ "$HOST_OS" = "Windows" ]; then
	echo "... is Windows"
	echo ""

	echo "Windows Configs"

	WINDOWS_USERNAME="me"
	WIN_HOME="/mnt/c/Users/$WINDOWS_USERNAME"

	echo "--- VSCode Configs"
	sudo cp "$ROOT/config/vscode/settings.json" "$WIN_HOME/AppData/Roaming/Code/User/settings.json"

	echo "--- Update and clean WSL (This will take about 30s)."
	sudo dpkg --configure -a
	echo "--- --- Update"
	sudo apt-get -y update >&-
	echo "--- --- Dist Upgrade"
	sudo apt-get -y dist-upgrade >&-
	echo "--- --- Garbage Collection"''
	sudo apt-get -y autoremove >&-
	sudo apt-get -y autoclean >&-

	echo "--- Install package sources."
	curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - >&-
	
	echo "--- Install WSL dependencies."
	sudo apt-get -y install git zsh libssl-dev libreadline-dev zlib1g-dev libtool pkg-config build-essential autoconf automake libzmq-dev >&-
	
	echo "--- Install Node/NPM and Nave Virtual Node."
	sudo apt-get install -y nodejs >&-
	npm config set prefix '~/.npm-global'

	if [ ! -d ~/.npm-global ]; then
		NPM_GLOBAL_STATUS="NPM Global:$BOLD Installed $NORMAL" 
		mkdir ~/.npm-global		
	else
		NPM_GLOBAL_STATUS="NPM Global: Already Installed"
	fi

	echo ""
fi

if [ "$HOST_OS" = "Ubuntu" ]; then
	echo "... is Ubuntu"
fi

# Unix tooling installs ----------------------------------------------------------------

if [ ! -d ~/.rbenv ]; then
	RBENV_STATUS="Rbenv:$BOLD Installed $NORMAL"
	git clone https://github.com/rbenv/rbenv.git ~/.rbenv >&-
	cd ~/.rbenv && src/configure && make -C src >&-
else
	RBENV_STATUS="Rbenv: Already Installed"
fi

if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
	RBUILD_STATUS="Ruby Build:$BOLD Installed $NORMAL"
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build >&-
else
	RBUILD_STATUS="Ruby Build: Already Installed"
fi

if [ ! -d ~/.fzf ]; then
	FZF_STATUS="Fzf:$BOLD Installed $NORMAL"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf >&-
	~/.fzf/install -y >&-
else
	FZF_STATUS="Fzf: Already Installed"
fi

rm -rf ~/.vim
ln -s "$ROOT/vim" ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	VUNDLE_STATUS="Vundle:$BOLD Installed $NORMAL" >&-
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >&-
else
	VUNDLE_STATUS="Vundle: Already Installed"
fi

echo "Tooling Installs"
echo "--- $NPM_GLOBAL_STATUS"
echo "--- $RBENV_STATUS"
echo "--- $RBUILD_STATUS"
echo "--- $FZF_STATUS"
echo "--- $VUNDLE_STATUS"
echo "Done"

echo ""

# Deploy configs & dotfiles -------------------------------------------------------------
echo "Constructing Symlinks"
cd $ROOT
for FILE in $ROOT/config/*
do
  rm -rf ~/.$(basename $FILE)
  ln -s $FILE ~/.$(basename $FILE)
  echo "--- $BOLD$(basename $FILE)$NORMAL"
done
echo "Done"

. ~/.bashrc

echo "--- NODE System Packages." 
npm install -g nave webpack gulp bower nodemon yarn >&-
echo "Done!"

echo ""
echo "FINISHED"