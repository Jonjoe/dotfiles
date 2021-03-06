# | Deploy My Neovim Stuff ========================================
# -----------------------------------------------------------------
# Deploy neovim
#
outputTitle "Deploying Neovim Configs"

# Move files ======================================================
# -----------------------------------------------------------------

cd $ROOT
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
cp -a $ROOT/nvim ~/.config
rm -rf ~/.config/nvim/init.vim ~/.config/nvim/coc-settings.json
ln -s $ROOT/nvim/init.vim ~/.config/nvim/init.vim
ln -s $ROOT/nvim/coc-settings.json ~/.config/nvim/coc-settings.json