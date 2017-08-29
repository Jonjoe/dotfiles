# | React Generators ==============================================
# -----------------------------------------------------------------
# Helper functions taht generate react code.
#

# Setup a stateless functional component  =========================
# -----------------------------------------------------------------
generate-rsfc() {
  git clone git@github.com:Jonjoe/react-base-functional-component.git $@
	cd ./$@
	rm -rf .git
	cd ../
}

# Setup a redux ducky module  =====================================
# -----------------------------------------------------------------
generate-rrdm() {
  git clone git@github.com:Jonjoe/react-redux-ducky-module.git $@
	cd ./$@
	rm -rf .git
	cd ../
}

# Setup a higher order container  =================================
# -----------------------------------------------------------------
generate-rhoc() {
  git clone git@github.com:Jonjoe/react-base-higher-component.git $@
	cd ./$@
	rm -rf .git
	cd ../
}


