#!/bin/bash

if [[ ! -f ~/.ssh/config ]]; then
  echo "~/.ssh/config file not found."
  exit 1
fi

hosts=$(grep -E "^Host " ~/.ssh/config | awk '{print $2}')

selected_host=$(echo "$hosts" | fzf --height 40% --border --reverse --prompt="Select SSH Host: ")

if [[ -n $selected_host ]]; then
  tmux rename-window "$selected_host"

  ssh "$selected_host"
else
  echo "No host selected."
fi
