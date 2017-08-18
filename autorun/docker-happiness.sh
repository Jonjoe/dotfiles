# | Docker Helpers ==================================================
# -----------------------------------------------------------------
# Helper functions for docker tasks.
#

# Get ip of docker server =========================================
# -----------------------------------------------------------------
dockerIP() {
	sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $@
}
