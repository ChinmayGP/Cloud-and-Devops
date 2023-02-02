#!/bin/sh

#Author: Chinmay Pohankar
#Date: Jan 29, 2023

if [ `whoami` != root ]; then
	echo "you are not a root user!"
	exit
else
	echo "you are a root user!"
fi

