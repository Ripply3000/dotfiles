#!/bin/bash

# Check if .ssh/config exists
if [[ ! -f ~/.ssh/config ]]; then
  echo "~/.ssh/config file not found."
  exit 1
fi
#
# # Extract host names from the SSH config file
hosts=$(grep -E "^Host " ~/.ssh/config | awk '{print $2}')

# # Use fzf to select a host
selected_host=$(echo "$hosts" | fzf --height 40% --border --reverse --prompt="Select SSH Host: ")

if [[ -n $selected_host ]]; then
  ssh "$selected_host"
else
  echo "No host selected."
fi

