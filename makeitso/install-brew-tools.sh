# | Install Brew tools ============================================
# -----------------------------------------------------------------
# Deploy scripts
#

echo " "
echo "==========================="
echo "Setting up Brew and installing CLI tools"
echo "==========================="
echo " "

# Check if brew is installed ======================================
# -----------------------------------------------------------------
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# Install cli tools ===============================================
# -----------------------------------------------------------------
brew list git || brew install git
brew list grep || brew install grep
brew list watchman || brew install watchman
brew list neovim || brew install neovim
brew list rbenv || brew install rbenv

rbenv init
