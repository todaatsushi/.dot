#!/bin/bash
tmux new-session -s "wabsite" -n "database" -d
tmux send-keys -t wabsite:database "cd ~/Workspace/web2/common" Enter
tmux send-keys -t wabsite:database "docker compose up" Enter

tmux neww -n "staging"
tmux send-keys -t wabsite:staging "cd ~/Workspace/web2/staging" Enter
