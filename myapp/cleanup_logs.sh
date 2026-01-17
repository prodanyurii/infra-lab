#!/bin/bash

LOG_DIR="$1"
DAYS="$2"

if [[ -z "$LOG_DIR" || -z "$DAYS" ]]; then
  echo "Usage: $0 <log_dir> <days>"
  exit 1
fi

if [[ ! -d "$LOG_DIR" ]]; then
  echo "Error: directory '$LOG_DIR' does not exist"
  exit 1
fi

echo "Deleting files in '$LOG_DIR' older than $DAYS days..."

find "$LOG_DIR" -type f -mtime +"$DAYS" -print -delete

echo "Done."
exit 0
