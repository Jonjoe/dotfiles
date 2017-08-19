# | Paths =========================================================
# -----------------------------------------------------------------
# Extra PATH definitions
#

# Define Paths ====================================================
# -----------------------------------------------------------------
BIN_PATH="~/.bin"
RBENV_PATH="~/.rbenv/bin"
NPM_GLOBAL_PATH="~/.npm-global/bin"
SBIN_PATH="/usr/local/sbin"
WIN_DOCKER_PATH="/mnt/c/Program Files/Docker/Docker/resources/bin"
BASHER_PATH="~/.basher/bin"

# Load into Path array ============================================
# -----------------------------------------------------------------
PATH_ARRAY=(
  $BIN_PATH
  $RBENV_PATH
  $NPM_GLOBAL_PATH
  $SBIN_PATH
  $WIN_DOCKER_PATH
  $BASHER_PATH
)
