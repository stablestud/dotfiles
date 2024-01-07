#! /usr/bin/env bash

# Initialize zoxide if in $PATH
if command -v zoxide 1>/dev/null 2>&1; then
	eval "$(zoxide init --cmd=j bash)"
	# Make ble.sh Zoxide aware, load its integration
	if [ -n "${BLE_VERSION}" ]; then
		ble-import integration/zoxide
	fi
fi

# vim: filetype=bash
