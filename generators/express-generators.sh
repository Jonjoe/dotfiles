# | Express Generators ==============================================
# -----------------------------------------------------------------
# Helper functions taht generate express code.
#

# Setup a express rest resource module ============================
# -----------------------------------------------------------------
generate-errm() {
  git clone git@github.com:Jonjoe/express-rest-resource-module.git $@
	cd ./$@
	rm -rf .git
	cd ../
}
