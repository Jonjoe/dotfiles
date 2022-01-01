# | Init ==========================================================
# -----------------------------------------------------------------

FILEPATH=$(realpath $0)
ROOT=$(dirname $FILEPATH)

bold=$(tput bold)
normal=$(tput sgr0)
spacer="------"

outputTitle () {
  echo " "
  echo "==========================="
  echo "| $1"
  echo "==========================="
  echo " "
}

. $ROOT/setup/setup-vim.sh
. $ROOT/setup/install-brew-tools.sh
. $ROOT/setup/unix-tooling.sh
. $ROOT/setup/deploy-dotfiles.sh
. $ROOT/setup/deploy-configs.sh



outputTitle "DONE - Reset the terminal"