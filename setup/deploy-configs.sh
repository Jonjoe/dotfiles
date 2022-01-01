# | Deploy Configs ================================================
# -----------------------------------------------------------------
# Deploy scripts
#

outputTitle "Constructing Config Symlinks"

# Setup ===========================================================
# -----------------------------------------------------------------

cd $ROOT
rm -rf ~/.config/custom-configs
mkdir -p ~/.config/custom-configs 


# Run Loop ========================================================
# -----------------------------------------------------------------

for FILE in $ROOT/configs/*
do
  ln -s $FILE ~/.config/custom-configs/$(basename $FILE)
  echo "${spacer} ${bold}$(basename $FILE)${normal}"
done