# Unix tooling installs ----------------------------------------------------------------
# --------------------------------------------------------------------------------------

# Rbenv Setup --------------------------------------------------------------------------
if [ ! -d ~/.rbenv ]; then
	RBENV_STATUS="Rbenv:$BOLD Installed $NORMAL"

	git clone https://github.com/rbenv/rbenv.git ~/.rbenv >&-
	cd ~/.rbenv && src/configure && make -C src >&-
else
	RBENV_STATUS="Rbenv: Already Installed"
fi

# Ruby Build Setup ----------------------------------------------------------------------
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
	RBUILD_STATUS="Ruby Build:$BOLD Installed $NORMAL"

	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build >&-
else
	RBUILD_STATUS="Ruby Build: Already Installed"
fi

# FZF Setup -----------------------------------------------------------------------------
if [ ! -d ~/.fzf ]; then
	FZF_STATUS="Fzf:$BOLD Installed $NORMAL"

	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf >&-
	~/.fzf/install -y >&-
else
	FZF_STATUS="Fzf: Already Installed"
fi

# Vim Setup ------------------------------------------------------------------------------
rm -rf ~/.vim
ln -s "$ROOT/vim" ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	VUNDLE_STATUS="Vundle:$BOLD Installed $NORMAL" >&-

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >&-
	~/.bash_it/install.sh
else
	VUNDLE_STATUS="Vundle: Already Installed"
fi

# FZF Setup -----------------------------------------------------------------------------
if [ ! -d ~/.bash_it ]; then
	BASHIT_STATUS="Bash It:$BOLD Installed $NORMAL"

	git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
else
	BASHIT_STATUS="Bash It: Already Installed"
fi

# Write Success' -----------------------------------------------------------------------
# --------------------------------------------------------------------------------------

echo "Tooling Installs"
echo "--- $NPM_GLOBAL_STATUS"
echo "--- $RBENV_STATUS"
echo "--- $RBUILD_STATUS"
echo "--- $FZF_STATUS"
echo "--- $VUNDLE_STATUS"
echo "--- $BASHIT_STATUS"
echo "Done"

. ~/.bashrc >&-