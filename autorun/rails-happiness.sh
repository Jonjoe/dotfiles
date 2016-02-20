#!/bim/bash

# Delete database and reload it with data
railsDB () {
  rm -rf db/development.sqlite3
  rails db:migrate
  rails db:seed
}
