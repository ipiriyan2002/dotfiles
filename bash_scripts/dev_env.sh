#!/bin/bash

# Create a unique session name by adding date and time
SESSION_NAME="dev_session_$(date +%s)"

# Create new detached session
tmux new-session -d -s "$SESSION_NAME"


# Split windows
tmux split-window -h -t "$SESSION_NAME"

tmux split-window -v -p 98 -t "$SESSION_NAME:0.0"
tmux split-window -v -t "$SESSION_NAME:0.1"

# Send commands

tmux send-keys -t "$SESSION_NAME:0.0" "gstat" C-m
tmux send-keys -t "$SESSION_NAME:0.1" "mytop" C-m


# Attach to session
tmux attach-session -t "$SESSION_NAME"
