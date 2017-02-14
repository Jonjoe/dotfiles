#!/bim/bash

# Change iterms tab name
tab ()
{
    echo -ne "\033]0;$@\007"
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
alias slackGo="MONGO_THALIA_DB_URL=mongodb://localhost:27017/thalia HUBOT_SLACK_TOKEN=xoxb-126220435831-GLQfyPNSjWiV1ovIGF0uYtV9 ./bin/hubot --adapter slack"
