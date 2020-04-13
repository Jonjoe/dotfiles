# | Deploy My Neovim Stuff ========================================
# -----------------------------------------------------------------
# Deploy neovim
#

# Loop files ======================================================
# -----------------------------------------------------------------
echo "Deploying Neovim"

cd $ROOT
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
cp -a $ROOT/nvim ~/.config
rm -rf ~/.config/nvim/init.vim
ln -s $ROOT/nvim/init.vim ~/.config/nvim/init.vim

echo "Done"