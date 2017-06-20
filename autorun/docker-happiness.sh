# Gets the IP address of a container
dockerIP() {
	sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $@
}
