# | Install Brew tools ============================================
# -----------------------------------------------------------------
# Deploy scripts
#
outputTitle "Setting up Brew"

# Check if brew is installed ======================================
# -----------------------------------------------------------------

which -s brew
if [[ $? != 0 ]] ; then
    echo '--- Updating / Setting up Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo '--- Updating brew packages'
    brew update
fi


checkIfInstalledOrInstall () {
    echo "${spacer} ${bold}$1${normal}"
    brew list $1 1> /dev/null || brew install $1
}

# Install cli tools ===============================================
# -----------------------------------------------------------------

outputTitle "Setting up CLI tools"

brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk8

checkIfInstalledOrInstall "git"
checkIfInstalledOrInstall "tmux"
checkIfInstalledOrInstall "grep"
checkIfInstalledOrInstall "watchman"
checkIfInstalledOrInstall "neovim"
checkIfInstalledOrInstall "rbenv"
checkIfInstalledOrInstall "libsodium"
checkIfInstalledOrInstall "reattach-to-user-namespace"
