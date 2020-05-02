# | Deploy Config Files ===========================================
# -----------------------------------------------------------------
# Deploy configs & dotfiles
#

echo " "
echo "==========================="
echo "Deploying DotFiles"
echo "==========================="
echo " "

# Variables =======================================================
# -----------------------------------------------------------------

IFS=""

# Clean array from prefixes =======================================
# -----------------------------------------------------------------

remove_dot_and_dotdot_dirs()
{
    sed \
      -e 's/^[.]\{1,2\}\x00//' \
      -e 's/\x00[.]\{1,2\}\x00/\x00/g'
}

# Remove ./ prefixes ==============================================
# -----------------------------------------------------------------

remove_leading_dotslash()
{
    sed \
      -e 's/^[.]\///' \
      -e 's/\x00[.]\//\x00/g'
}

# Loop files ======================================================
# -----------------------------------------------------------------
rm -rf ~/.zsh*

find $ROOT/files -maxdepth 1 -print0 |
  sort -z |
  remove_dot_and_dotdot_dirs |
  remove_leading_dotslash |
  while read -r -d "" FILE
  do
    if [[ -f $FILE ]]; then
      FILENAME=$(basename "${FILE}")
      rm -rf ~/$FILENAME
      ln -s $FILE ~/$FILENAME
      echo "${FILENAME} has been linked"
    fi
  done