# | Paths =========================================================
# -----------------------------------------------------------------
# Extra PATH definitions
#

# Define Paths ====================================================
# -----------------------------------------------------------------
RBENV_PATH="$HOME/.rbenv/bin"
PYTHON2_PATH="/usr/local/opt/python@2/libexec/bin"
FLUTTER_PATH="$HOME/.flutter/bin"
ANDROID_SDK_PATH="$HOME/Library/Android/sdk/tools"

# Load into Path array ============================================
# -----------------------------------------------------------------
PATH_ARRAY=(
  $RBENV_PATH
  $PYTHON2_PATH
  $FLUTTER_PATH
  $ANDROID_SDK_PATH
)

for P in "${PATH_ARRAY[@]}"
do
  export PATH="$PATH:$P"
done

