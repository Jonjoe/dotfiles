#!/bim/bash

# Change iterms tab name
tab ()
{
    echo -ne "\033]0;$@\007"
}

# Improved CD
cd ()
{
    builtin cd $@
    ls
}

# Custom Commands
alias hosts="sudo sublime /etc/hosts"
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias reload=". ~/.bash_profile"
