# | Unix tooling ==================================================
# -----------------------------------------------------------------
# Install Unix tools:
#    - Rbenv,
#    - Ruby build,
#    - FZF,
#    - Github Hub,

NORMAL=$(tput sgr0)
BOLD=$(tput bold)

# Rbenv Setup =====================================================
# -----------------------------------------------------------------
if [ ! -d ~/.rbenv ]; then
	RBENV_STATUS="Rbenv:$BOLD Installed $NORMAL"

	git clone https://github.com/rbenv/rbenv.git ~/.rbenv >&-
	cd ~/.rbenv && src/configure && make -C src >&-
else
	RBENV_STATUS="Rbenv: Already Installed"
fi

# Ruby Build Setup ================================================
# -----------------------------------------------------------------
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
	RBUILD_STATUS="Ruby Build:$BOLD Installed $NORMAL"

	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build >&-
else
	RBUILD_STATUS="Ruby Build: Already Installed"
fi

# FZF Setup =======================================================
# -----------------------------------------------------------------
if [ ! -d ~/.fzf ]; then
	FZF_STATUS="Fzf:$BOLD Installed $NORMAL"

	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf >&-
	~/.fzf/install -y >&-
else
	FZF_STATUS="Fzf: Already Installed"
fi


# Github Hub Setup ================================================
# -----------------------------------------------------------------
if [ ! -d ~/.hub ]; then
	HUB_STATUS="Hub:$BOLD Installed $NORMAL"

	git clone https://github.com/github/hub.git ~/.hub && cd ~/.hub
else
	HUB_STATUS="Hub: Already Installed"
fi

# Write Success' ==================================================
# -----------------------------------------------------------------
echo "Tooling Installs"
echo "--- $NPM_GLOBAL_STATUS"
echo "--- $RBENV_STATUS"
echo "--- $RBUILD_STATUS"
echo "--- $FZF_STATUS"
echo "--- $HUB_STATUS"
echo "Done"