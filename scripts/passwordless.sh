#!/bin/bash

echo "[INFO] Automatically add current user to the sudoers file"
if sudo grep -q "$USER ALL=(ALL) NOPASSWD: ALL" /etc/sudoers; then
  echo "passwordless sudo for $USER already active"
else
  echo "setting sudo without password for $USER"
  echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo bash -c '(EDITOR="tee -a" visudo)'
fi

