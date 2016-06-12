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
alias hosts="sudo sublime /etc/hosts"
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias regen=". ~/.zshrc"
alias reload=". ~/.zshrc"
alias makeitso="sh ~/Dotfiles/makeitso.sh"
