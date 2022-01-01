# | Unix tooling ==================================================
# -----------------------------------------------------------------
# Install Unix tools:
#    - Rbenv,
#    - Oh My ZSH,
#    - Ruby build,
#    - FZF,
#    - Github Hub,
outputTitle "Setup Unix Tooling"

# Tmux Package Manager Setup ======================================
# -----------------------------------------------------------------
if [ ! -d ~/.tmux/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "${spacer} ${bold}tmux${normal}"

# Oh My ZSH Setup =================================================
# -----------------------------------------------------------------
if [ ! -d ~/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "${spacer} ${bold}oh my zsh${normal}"

# Rbenv Setup =====================================================
# -----------------------------------------------------------------
if [ ! -d ~/.rbenv ]; then
	git clone https://github.com/rbenv/rbenv.git ~/.rbenv >&-
	cd ~/.rbenv && src/configure && make -C src >&-
fi

echo "${spacer} ${bold}rbenv${normal}"

# Ruby Build Setup ================================================
# -----------------------------------------------------------------
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build >&-
fi

echo "${spacer} ${bold}ruby build${normal}"

# FZF Setup =======================================================
# -----------------------------------------------------------------
if [ ! -d ~/.fzf ]; then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf >&-
	~/.fzf/install -y >&-
fi

echo "${spacer} ${bold}fzf${normal}"


# Github Hub Setup ================================================
# -----------------------------------------------------------------
if [ ! -d ~/.hub ]; then
	git clone https://github.com/github/hub.git ~/.hub 
fi

echo "${spacer} ${bold}github hub${normal}"
