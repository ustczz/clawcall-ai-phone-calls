#!/bin/sh
set -eu
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
printf '%s\n' 'Note: stepone.sh is retained for compatibility; use clawcall.sh.' >&2
exec python3 "$SCRIPT_DIR/scripts/clawcall_client.py" "$@"
