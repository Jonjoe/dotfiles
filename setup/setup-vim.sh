# | Vim Setup ================================================
# ------------------------------------------------------------
# Base vim setup before its ouwn configs take over
#

outputTitle "Setting Up vim"

if [ -d "~/.vim/autoload/plug.vim" ]; then 
    echo "${spacer} VimPlug Already Installed" 
fi

if [ ! -d "~/.vim/autoload/plug.vim" ]; then 
    echo "${spacer} Installing VimPlug"

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi