# | React Generators ==============================================
# -----------------------------------------------------------------
# Helper functions taht generate react code.
#

# List all available generators  ==================================
# -----------------------------------------------------------------
generator-ls() {
	echo ''
	echo '---------------------------------------------------------------'
	echo '  React Stateless Component | generate-rslc [component name]  '
	echo '_______________________________________________________________'
}

# Setup a stateless component  ====================================
# -----------------------------------------------------------------
generate-rslc() {
  git clone git@github.com:Jonjoe/base-component.git $@
	cd ./$@
	rm -rf .git
	cd ../
}