# | React Generators ==============================================
# -----------------------------------------------------------------
# Helper functions taht generate react code.
#

# Setup a stateless component  ====================================
# -----------------------------------------------------------------
generate-rslc() {
  git clone git@github.com:Jonjoe/base-component.git $@
	cd ./$@
	rm -rf .git
	cd ../
}