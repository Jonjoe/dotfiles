# | Deploy Scripts ================================================
# -----------------------------------------------------------------
# Deploy scripts
#

# Loop files ======================================================
# -----------------------------------------------------------------
echo "Constructing Script Symlinks"

cd $ROOT
rm -rf ~/.config/scripts
mkdir -p ~/.config/scripts 

for FILE in $ROOT/scripts/*
do
  ln -s $FILE ~/.config/scripts/$(basename $FILE)
  echo "--- $BOLD$(basename $FILE)$NORMAL"
done

echo "Done"