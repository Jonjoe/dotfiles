#!/bim/bash

# Quick Commits
gCommit(){
  git add .
  git commit -m "$1"
}

# Quick Status
gStat(){
  git status
}
