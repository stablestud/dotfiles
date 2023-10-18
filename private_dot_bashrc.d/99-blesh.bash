#! /usr/bin/env bash

# Enable ble.sh at last
# Read here why two-stage loading is required: https://github.com/akinomyoga/ble.sh/discussions/254#discussioncomment-4284757

[[ ${BLE_VERSION-} ]] && ble-attach

# vim: filetype=bash
