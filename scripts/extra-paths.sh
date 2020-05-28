# | Paths =========================================================
# -----------------------------------------------------------------
# Extra PATH definitions
#

# Define Paths ====================================================
# -----------------------------------------------------------------
RBENV_PATH="~/.rbenv/bin"
PYTHON2_PATH="/usr/local/opt/python@2/libexec/bin"
FLUTTER_PATH="~/.flutter/bin"

# Load into Path array ============================================
# -----------------------------------------------------------------
PATH_ARRAY=(
  $RBENV_PATH
  $PYTHON2_PATH
  $FLUTTER_PATH
)


for P in "${PATH_ARRAY[@]}"
do
  export PATH=$P:$PATH
done

