# Gets the IP address of a container
dockerIP(container) {
	$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $container)
}
