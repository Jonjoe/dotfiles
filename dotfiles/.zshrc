# | Bash Configs ==================================================
# -----------------------------------------------------------------
# Personalisations for my bash terminal experience.
#

# ZSH & Themeing ==================================================
# -----------------------------------------------------------------
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="nord"
plugins=(git)
ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

export ANDROID_SDK_ROOT="/Users/jonjoe/Library/Android/sdk"
export PATH="$HOME/.rbenv/bin:$PATH"

# Autorun Files ===================================================
# -----------------------------------------------------------------
for SCRIPT in ~/.config/custom-configs/*
do
  source $SCRIPT
done
# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true



echo ""
echo ""
echo "================================="
echo "    Welcome back, commander."
echo "================================="
