#!/bin/bash
set -e
set -u

DATA_VALUE=None
DATA_DIR="${HOME}/.local/share/chezmoi"
DATA_FILE="${DATA_DIR}/.chezmoidata.toml"

if [[ ! -d "$DATA_FILE" ]]; then
  mkdir -p "$DATA_FILE"
fi

if [[ ! -f "$DATA_FILE" ]]; then
  touch "$DATA_FILE"
fi

DATA_KEY=GIT_MAIL_ID
if ! grep -R "^[#]*\s*${DATA_KEY} = .*" "$DATA_FILE" > /dev/null; then
  echo "$DATA_KEY = '$DATA_VALUE'" >> "$DATA_FILE"
fi
