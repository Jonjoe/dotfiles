# Inits
#----------------------------
. ~/dotfiles/scripts/git-prompt.sh
. ~/.nvm/nvm.sh

PS1="\[\033[0;97m\][\[\033[0m\]\[\033[0;94m\]Local\[\033[0m\]\[\033[0;97m\]]\[\033[0m\]\[\033[0;94m\] | \[\033[0m\]\[\033[0;97m\][\[\033[0m\]\[\033[0;92m\]\w\[\033[0m\]\[\033[0;97m\]]\[\033[0m\]\$(__git_ps1)\\n\[\033[0;97m\][\[\033[0m\]\[\033[0;92m\]\u\[\033[0m\]\[\033[0;97m\]]\[\033[0m\]$ "
# ----------------------------

# find ~/ -name '.DS_Store' -delete &


# ----------------------------
# Custom Commands
# ----------------------------
alias reload=". ~/.bash_profile"
alias reloadhere=""
alias hosts="sudo atom /etc/hosts"
alias migrate="rake db:migrate && rake db:migrate RAILS_ENV=test"
alias rspec="RAILS_ENV=test rspec"
alias vimplugins="vim +PluginInstall +qall"
# ----------------------------

# ----------------------------
# Custom Functions
# ----------------------------

# Improved CD
cd ()
{
    builtin cd $@
    ls -la
}

# Streamlined Commits
commit()
{
   git add .
   git commit -m "$1"
   TEMP=`getopt --long -o "p" "$2"`
   eval set -- "$TEMP"
   while true ; do
      case "$2" in
         -p )
            echo "push it baby"
         ;;
      esac 
   done;            
}


# Change iterms tab name
tab ()
{
    echo -ne "\033]0;$@\007"
}

#backup mysql
backup()
{
  if [ -z $1 ] | [ -z $2 ]
    then
      echo "You dun fucked up"
      echo "You need two args"
      echo "Which indee server? For example if yodadevelopment.indee.io then yodadevelopment"
      echo "Which database? For example wp_test"
    else
      mysqldump --opt -h $1.indee.io -u indee -p $2 > $2.sql
  fi
}

# Generate Ghost instance
ghost ()
{
    . /Volumes/WORK/_assets/scripts/ghost.sh $@
}

# Generate Wordpress instance
ror ()
{
    . /Volumes/WORK/_assets/scripts/rails.sh $@
}

# Generate Wordpress instance
wordpress ()
{
    . /Volumes/WORK/_assets/scripts/wordpress.sh $@
}
# ----------------------------


# ----------------------------
# Servers
# ----------------------------
alias vd="ssh $SERVERUSER@$DEVELOPMENTSERVER"
alias vp01="ssh $SERVERUSER@$PRODUCTIONSERVER1"
alias vp02="ssh $SERVERUSER@$PRODUCTIONSERVER2"
# ----------------------------


eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
