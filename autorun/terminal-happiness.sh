# | General Terminal Helpers ========================================
# -----------------------------------------------------------------
# Helper functions for general terminal tasks.
#

# Rename tab label ================================================
# -----------------------------------------------------------------
tab ()
{
    echo -ne "\033]0;$@\007"
}

# Reset vim plugin line endings ===================================
# -----------------------------------------------------------------
vim_plugins()
{
	vim +PluginInstall +qall
	dos2unix ~/Dotfiles/vim/**/*
}

# Kill corrupted packages =========================================
# -----------------------------------------------------------------
die_motherfucker_die() {
	sudo mv /var/lib/dpkg/info/$1.* /tmp/
	sudo dpkg --remove --force-remove-reinstreq $1
	sudo apt-get remove $1
	sudo apt-get autoremove && sudo apt-get autoclean
}

# Terminal Aliases ================================================
# -----------------------------------------------------------------
alias root="cd /mnt/c/Users/me && ls -la"
alias clear_vim="find . -name '*.sw*' -type f -delete"
alias clear_ds="find . -name '*.DS_Store' -type f -delete"
alias hosts="sudo vim /etc/hosts"
alias reload=". ~/.bashrc"
