# | Bash Configs ==================================================
# -----------------------------------------------------------------
# Personalisations for my bash terminal experience.
#

# ZSH & Themeing ==================================================
# -----------------------------------------------------------------
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
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

export FIREBASE_TOKEN=1//03JW3i8VREY_3CgYIARAAGAMSNwF-L9IrUb1HuMZMTeZ5g4bCp76Hgd8E8agEC_xxrHpP9C-ETkdrE5h5ZO3bPtLRbqpJLH81Jwo

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

 eval "$(rbenv init -)"

echo ""
echo ""
echo "================================="
echo "    Welcome back, commander."
echo "================================="

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/local/share/zsh/site-functions/_aws
