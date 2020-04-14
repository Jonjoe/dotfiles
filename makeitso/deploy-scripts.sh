# | Deploy Scripts ================================================
# -----------------------------------------------------------------
# Deploy scripts
#

echo " "
echo "==========================="
echo "Constructing Script Symlinks"
echo "==========================="
echo " "

# Setup ===========================================================
# -----------------------------------------------------------------

cd $ROOT
rm -rf ~/.config/scripts
mkdir -p ~/.config/scripts 

# Run Loop ========================================================
# -----------------------------------------------------------------
for FILE in $ROOT/scripts/*
do
  ln -s $FILE ~/.config/scripts/$(basename $FILE)
  echo "--- $BOLD$(basename $FILE)$NORMAL"
done