#!/usr/bin/bash


# BIN_URL = url to binutils tools .tar.gz file
# GCC_URL = url to gcc .tar.gz file

if [[ -z $GCC_URL || -z $BIN_URL ]]
then
	echo "Please run this through ./install.sh or set the needed global variables:"
	echo " * GCC_URL = Holds the URL to the GCC source code file (.tar.gz)"
	echo " * BIN_URL = Holds the URL to the Binutils source code file (.tar.gz)"
	exit
fi


curl $GCC_URL -o gcc_source_code.tar.gz -C -
curl $BIN_URL -o binutils_source_code.tar.gz -C -




tar -xzf gcc_source_code.tar.gz --one-top-level=gcc_source_code
tar -xzf binutils_source_code.tar.gz --one-top-level=binutils_source_code
