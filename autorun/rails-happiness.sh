#!/bim/bash

# Delete database and reload it with data
sqliteRailsDB () {
  rm -rf db/development.sqlite3
  bin/rails db:migrate
  bin/rails db:seed
}

legacyRailsDB() {
  bin/rake db:drop
	bin/rake db:create
	bin/rake db:migrate
	bin/rake db:seed
}

railsDB ()
{
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed
}

herokuDB () {
  heroku pg:reset DATABASE
  heroku run rake db:migrate
  heroku run rake db:seed
}

killRails () {
  kill -9 $(lsof -wni tcp:3000 | awk 'END {print $2}')
}

alias spec="rspec spec --format documentation"
