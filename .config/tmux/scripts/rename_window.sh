#!/bin/bash

# Fetch the current path of the active tmux pane
current_path=$(tmux display-message -p -F "#{pane_current_path}")

# Replace the home directory path with '~' if the current path starts with the home directory
home_dir=$(echo $HOME)
if [[ "$current_path" == $home_dir* ]]; then
	display_path="~${current_path#$home_dir}"
else
	display_path="$current_path"
fi

# Use the basename of the modified path if no argument is provided
if [ -z "$1" ]; then
	window_name=$(basename "$display_path")
else
	window_name="$1"
fi

# Rename the tmux window
tmux rename-window "$window_name"
