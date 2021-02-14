# | Bash Configs ==================================================
# -----------------------------------------------------------------
# Personalisations for my bash terminal experience.
#

# ZSH & Themeing ==================================================
# -----------------------------------------------------------------
export ZSH="/Users/jonjoe/.oh-my-zsh"
ZSH_THEME="nord"
plugins=(git)
source $ZSH/oh-my-zsh.sh

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
