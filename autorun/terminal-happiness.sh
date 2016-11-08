#!/bim/bash

# Change iterms tab name
tab ()
{
    echo -ne "\033]0;$@\007"
}

rdb ()
{
	rails db:drop
	rails db:create
	rails db:migrate
	rails db:seed
}

regenZSH ()
{
	PATH=pwd
	reload
	regen
	cd $PATH
}

# Custom Commands
alias clear_vim="find . -name '*.sw*' -type f -delete"
alias clear_ds="find . -name '*.DS_Store' -type f -delete"
alias hosts="sudo sublime /etc/hosts"
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias regen=". ~/.zshrc"
alias reload=". ~/.zshrc"
alias makeitso="sh ~/Dotfiles/makeitso.sh"
alias new_react_app="create-react-app"
