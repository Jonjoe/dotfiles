# | Deploy Config Files ===========================================
# -----------------------------------------------------------------
# Deploy configs & dotfiles
#

# Loop files ======================================================
# -----------------------------------------------------------------
echo "Constructing Symlinks"

cd $ROOT

for FILE in $ROOT/config/*
do
  rm -rf ~/.$(basename $FILE)
  ln -s $FILE ~/.$(basename $FILE)
  echo "--- $BOLD$(basename $FILE)$NORMAL"
done

echo "Done"

# Reload Bash =====================================================
# -----------------------------------------------------------------
. ~/.bashrc >&-