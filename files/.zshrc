# | Bash Configs ==================================================
# -----------------------------------------------------------------
# Personalisations for my bash terminal experience.
#

# Starting Position ===============================================
# -----------------------------------------------------------------
cd $HOME/Engineering && ls -la

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

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Construct Path ==================================================
# -----------------------------------------------------------------
for path in "${PATH_ARRAY[@]}"
do
  export PATH="$path:$PATH"
done

# Autorun Files ===================================================
# -----------------------------------------------------------------
for SCRIPT in ~/Projects/Personal/dotfiles/autorun/*
do
  source $SCRIPT
done

# Rbenv Init ======================================================
# -----------------------------------------------------------------
eval "$(rbenv init -)"
