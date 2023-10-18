#! /usr/bin/env bash

# Source ble.sh before all other configuration files so ble.sh can
# pickup changes made by those and kinda `merge` them with its own settings.
# For more read here: https://github.com/akinomyoga/ble.sh/discussions/254#discussioncomment-4284757

if [ -f "${HOME}/.local/share/blesh/ble.sh" ]; then
	source "${HOME}/.local/share/blesh/ble.sh" --noattach
fi

# vim: filetype=bash
