#! /usr/bin/env bash

# set container_name if inside development container; for setting PS1 prompt
if test -f "/run/.toolboxenv" -o -f "/.dockerenv" -o -f "/run/.containerenv" || env | grep 'DISTROBOX\|TOOLBOX\|CONTAINER_ID' 1>/dev/null; then
	container_name="${CONTAINER_ID}"
	if [ -z "${container_name}" ]; then
		container_name="$(sed -n '/^name=/s/name="\(.*\)"/\1/p' "/run/.containerenv")"
	fi
	if [ -z "${container_name}" ]; then
		container_name="?"
	fi
fi
