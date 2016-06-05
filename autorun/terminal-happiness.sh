#!/bim/bash

# Change iterms tab name
tab ()
{
    echo -ne "\033]0;$@\007"
}

rdb () 
{
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed
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
