# | Init ==========================================================
# -----------------------------------------------------------------

FILEPATH=$(realpath $0)
ROOT=$(dirname $FILEPATH)

. $ROOT/makeitso/install-brew-tools.sh
. $ROOT/makeitso/unix-tooling.sh
. $ROOT/makeitso/deploy-files.sh
. $ROOT/makeitso/deploy-scripts.sh
. $ROOT/makeitso/deploy-nvim.sh

echo " "
echo "==========================="
echo "DONE - Go forth and prosper!"
echo "==========================="
echo " "

source ~/.zshrc

vim +'PlugInstall --sync' +qa
vim -c CocInstall coc-tsserver