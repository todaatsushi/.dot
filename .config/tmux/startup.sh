#!/bin/bash

# Open work session
tmux new-session -d -s "rio" -n "terminal"
tmux send-keys -t rio:terminal "cd ~/Workspace" Enter
tmux send-keys -t rio:terminal "clear" Enter

# Open workflow session
tmux new-session -d -s "config" -n "tools"
tmux send-keys -t config:tools "cd ~/.config/tmux" Enter
tmux send-keys -t config:tools "clear" Enter

tmux split-window -h
tmux send-keys -t config:tools "cd ~/.config/nvim" Enter
tmux send-keys -t config:tools "clear" Enter

# Gogo
tmux attach -t rio:terminal
# tmux attach -t config:tools
