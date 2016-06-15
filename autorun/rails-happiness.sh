#!/bim/bash

# Delete database and reload it with data
railsDB () {
  rm -rf db/development.sqlite3
  rails db:migrate
  rails db:seed
}

killRails () {
	kill -9 $(lsof -wni tcp:3000 | awk 'END {print $2}')
}
