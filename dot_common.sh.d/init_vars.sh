#!/bin/bash

DATA_VALUE=None

# check chezmoi data dir
DATA_DIR="${HOME}/.local/share/chezmoi"
if [[ ! -d "$DATA_DIR" ]]; then
  mkdir -p "$DATA_DIR"
fi

# check chezmoi data file
DATA_FILE="${DATA_DIR}/.chezmoidata.toml"
if [[ ! -f "$DATA_FILE" ]]; then
  touch "$DATA_FILE"
fi

DATA_KEY=GIT_MAIL_ID
if ! grep -R "^[#]*\s*${DATA_KEY} = .*" "$DATA_FILE" > /dev/null; then
  echo "$DATA_KEY = '$DATA_VALUE'" >> "$DATA_FILE"
fi
