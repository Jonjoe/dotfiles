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
ZSH_THEME="steeef"
plugins=(git)
source $ZSH/oh-my-zsh.sh
tic ~/.xterm-256color-italic.terminfo
export TERM=xterm-256color

# Autorun Files ===================================================
# -----------------------------------------------------------------
for SCRIPT in ~/.config/scripts/*
do
  source $SCRIPT
done

# Rbenv Init ======================================================
# -----------------------------------------------------------------
eval "$(rbenv init -)"
