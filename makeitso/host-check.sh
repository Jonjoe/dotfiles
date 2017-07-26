#!/bin/bash

# Decide what operating sytsem we are using.
# Returns STRING ['Windows' | 'Ubuntu']
hostOSCheck() {
	local  __passed_var=$1	

	local WINDOWS=/mnt/c/Users
	local UBUNTU=$(grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}')
	
	if [ -d "$WINDOWS" ]; then
		local  returned_value='Windows'
	else 
		if [ "$UBUNTU" = "Ubuntu" ]; then
			local  returned_value='Ubuntu'
		else
			local  returned_value='Unknown'
		fi
	fi

	eval $__passed_var="'$returned_value'"	
}