

# Generate Rails application without asset pipeline
rails new -J -S --skip-turbolinks $@

# OPTIONAL Quick prototyping
# git clone git@github.com:WeAreIndee/frontend-gulp-workflow.git _prototype

# Goto project
cd $@

# Delete folders to be replaced
rm -rf app/assets/
rm -rf .gitignore
rm -rf gemfile
rm -rf test/

# Clone new asset pipeline
git clone git@github.com:WeAreIndee/rails-gulp-workflow.git f

# Move files into project
mv f/* .

# Move new assets folder into place
mv assets/ app/

# delete defunkt repo
rm -rf f/

# Install devise
rails g devise:install

# Pull devise login views
rails g devise:views

# set up rspec binstub
bundle binstubs rspec-core

# Install rspec
rails g rspec:install

# Create devise models
rails generate devise User

# Generate controller
rails g controller home index --assets=false

# Migrate Databases
rake db:migrate
rake db:migrate RAILS_ENV=test

# OPTIONAL commands
# npm install
# gulp build

#Use erb2slim to convert all views to slim
erb2slim -d .

#Open Atom
atom .

#Resources
open "https://github.com/plataformatec/devise"
open "https://github.com/jnicklas/capybara"
