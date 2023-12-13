#! /usr/bin/env bash

# Initialize fzf if in $PATH
if command -v fzf 1>/dev/null 2>&1; then
	# If ble.sh is enabled, make it load fzf
	if test -n "${BLE_VERSION}"; then
		_ble_contrib_fzf_base="${HOME}/.bashrc.d/additional/fzf/"

		ble-import -d integration/fzf-completion
		ble-import -d integration/fzf-key-bindings
	else
		for fzfconf in "${HOME}/.bashrc.d/additional/fzf/shell/"*.bash; do
			source "${fzfconf}"
		done
	fi
fi

# vim: filetype=bash
