#! /usr/bin/env bash

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]'"${git_ps1}"'\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w'"${git_ps1}"'\$ '
fi
unset color_prompt force_color_prompt git_ps1

# vim: filetype=bash
