#! /usr/bin/env sh

# Script that install/build fonts into the systems cache file.
# Required so that fonts are visible to applications

if ! fc-cache; then
	echo "Error: failed to build fonts into cache files"
	exit 1
fi

# vim: filetype=sh
