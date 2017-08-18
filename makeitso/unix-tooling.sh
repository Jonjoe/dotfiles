# | Unix tooling ==================================================
# -----------------------------------------------------------------
# Install Unix tools:
#    - Rbenv,
#    - Ruby build,
#    - FZF,
#    - BashIt,
#    - Vim,
#    - Github Hub,
#    - Docker

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

# VIM Setup =======================================================
# -----------------------------------------------------------------
rm -rf ~/.vim
ln -s "$ROOT/vim" ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	VUNDLE_STATUS="Vundle:$BOLD Installed $NORMAL" >&-

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >&-
	~/.bash_it/install.sh
else
	VUNDLE_STATUS="Vundle: Already Installed"
fi

# BashIt Setup ====================================================
# -----------------------------------------------------------------
if [ ! -d ~/.bash_it ]; then
	BASHIT_STATUS="Bash It:$BOLD Installed $NORMAL"

	git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
else
	BASHIT_STATUS="Bash It: Already Installed"
fi

# Github Hub Setup ================================================
# -----------------------------------------------------------------
if [ ! -d ~/.hub ]; then
	HUB_STATUS="Hub:$BOLD Installed $NORMAL"

	git clone https://github.com/github/hub.git ~/.hub && cd ~/.hub
else
	HUB_STATUS="Hub: Already Installed"
fi

# Docker Setup ====================================================
# -----------------------------------------------------------------
if [ ! -d ~/.docker ]; then
	DOCKER_STATUS="Docker:$BOLD Installed $NORMAL"

	wget https://download.docker.com/linux/static/stable/x86_64/docker-17.06.0-ce.tgz
	tar -xzvf docker-*.tgz
	rm -rf docker-*.tgz
else
	DOCKER_STATUS="Docker: Already Installed"
fi

# Write Success' ==================================================
# -----------------------------------------------------------------
echo "Tooling Installs"
echo "--- $NPM_GLOBAL_STATUS"
echo "--- $RBENV_STATUS"
echo "--- $RBUILD_STATUS"
echo "--- $DOCKER_STATUS"
echo "--- $FZF_STATUS"
echo "--- $VUNDLE_STATUS"
echo "--- $BASHIT_STATUS"
echo "--- $HUB_STATUS"
echo "Done"

# Reload bash =====================================================
# -----------------------------------------------------------------
. ~/.bashrc >&-