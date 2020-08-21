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
for SCRIPT in ~/.config/scripts/*
do
  source $SCRIPT
done

# Rbenv Init ======================================================
# -----------------------------------------------------------------
eval "$(rbenv init -)"

# FZF Init =======================================================
# -----------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ ! -s /Users/jonjoe/.travis/travis.sh ] || source /Users/jonjoe/.travis/travis.sh

unset DOCKER_HOST

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm