#!/bin/bash

SERVICE_NAME="$1"

if [[ -z "$SERVICE_NAME" ]]; then
  echo "Usage: $0 <service-name>"
  exit 1
fi

STATUS=$(systemctl is-active "$SERVICE_NAME")

if [[ "$STATUS" == "active" ]]; then
  echo "Service '$SERVICE_NAME' is ACTIVE"
  exit 0
else
  echo "Service '$SERVICE_NAME' is NOT active (status: $STATUS)"
  exit 1
fi
