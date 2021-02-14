# | Environment Variables =========================================
# -----------------------------------------------------------------
# System wide environment variables.
#

# Database Vars ===================================================
# -----------------------------------------------------------------
export PG_USERNAME=postgres
export PG_PASSWORD=password

# System Vars =====================================================
# -----------------------------------------------------------------
export EDITOR="nvim"
export BROWSER='chromium'
export NODE_ENV='development'
export JAVA_HOME=$(/usr/libexec/java_home)
export TMUXINATOR_CONFIG=~/Engineering/dotfiles/tmuxinator

export ANDROID_HOME=$HOME/Library/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/tools 
export PATH=$PATH:$ANDROID_HOME/tools/bin 
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Docker Vars =====================================================
# -----------------------------------------------------------------
unset DOCKER_HOST
# export DOCKER_HOST=tcp://0.0.0.0:2375