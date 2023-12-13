#! /usr/bin/env bash

# Initialize zoxide if in $PATH
if command -v zoxide 1>/dev/null 2>&1; then
	eval "$(zoxide init --cmd=j bash)"
fi

# vim: filetype=bash
