# | Init ==========================================================
# -----------------------------------------------------------------

FILEPATH=$(realpath $0)
ROOT=$(dirname $FILEPATH)

. $ROOT/makeitso/deploy-files.sh
. $ROOT/makeitso/deploy-scripts.sh
. $ROOT/makeitso/deploy-nvim.sh
. $ROOT/makeitso/unix-tooling.sh
