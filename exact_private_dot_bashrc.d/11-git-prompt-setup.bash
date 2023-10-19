#! /usr/bin/env bash

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWCOLORHINTS=1

# Add git repo branch indicator to bash prompt
# Should be shipped by default with bash
# If not, it can be found here:
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [[ $(LC_ALL=C type -t __git_ps1) == "function" ]]; then
	git_ps1='$(__git_ps1)'
fi

# vim: filetype=bash
