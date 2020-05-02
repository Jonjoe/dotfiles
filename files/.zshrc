# | Bash Configs ==================================================
# -----------------------------------------------------------------
# Personalisations for my bash terminal experience.
#

# Starting Position ===============================================
# -----------------------------------------------------------------
cd $HOME/Engineering && ls -la
echo ""

# Required Preboot Files ==========================================
# -----------------------------------------------------------------
. ~/.config/scripts/extra-paths.sh
. ~/.config/scripts/environment_variables.sh

# ZSH & Themeing ==================================================
# -----------------------------------------------------------------
export ZSH="/Users/jonjoe/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Autorun Files ===================================================
# -----------------------------------------------------------------
for SCRIPT in ~/.config/scripts/*
do
  source $SCRIPT
done

# Rbenv Init ======================================================
# -----------------------------------------------------------------
eval "$(rbenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
