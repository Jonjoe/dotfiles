# | Git SCM Helpers =================================================
# -----------------------------------------------------------------
# Helper functions for Git SCM tasks.
#

# Legacy Rails DB Init ============================================
# -----------------------------------------------------------------
legacyRailsDB() {
  bin/rake db:drop
	bin/rake db:create
	bin/rake db:migrate
	bin/rake db:seed
}

# Rails DB Init ===================================================
# -----------------------------------------------------------------
railsDB ()
{
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed
}

# Heroku Rails DB Init ============================================
# -----------------------------------------------------------------
herokuDB () {
  heroku pg:reset DATABASE
  heroku run rake db:migrate
  heroku run rake db:seed
}

# Kill orphaned rails processes ===================================
# -----------------------------------------------------------------
killRails () {
  kill -9 $(lsof -wni tcp:3000 | awk 'END {print $2}')
}

alias spec="rspec spec --format documentation"
