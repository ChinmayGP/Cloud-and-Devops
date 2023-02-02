#!/bin/sh

# Author: Chinmay Pohankar 
# Date : Jan 29, 2023

printf "Enter a package name: "
read packageName
#$packageName --version
if [ "$packageName --version" -ne 0 ]; then
	sudo apt-get update
	sudo apt install $packageName

else
	$packageName --version
	echo "Package already installed"
	exit
fi
