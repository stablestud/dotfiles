#! /usr/bin/env bash

# Set variable identifying the chroot you work in (used in 15-prompt.bash)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# vim: filetype=bash
