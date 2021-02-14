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

# Autorun Files ===================================================
# -----------------------------------------------------------------
for SCRIPT in ~/.config/custom-configs/*
do
  source $SCRIPT
done