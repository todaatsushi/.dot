#!/bin/bash

# Start work sesion
tmux new-session -d -s "wabsite" -n "server"

tmux send-keys -t wabsite:server "cdg website" Enter
tmux send-keys -t wabsite:server "clear" Enter
tmux send-keys -t wabsite:server "ddown" Enter
tmux send-keys -t wabsite:server "badger_up" Enter

tmux neww -n "terminal"
tmux send-keys -t wabsite:terminal "cdg website" Enter
tmux send-keys -t wabsite:terminal "sleep 5" Enter
tmux send-keys -t wabsite:terminal "badger_local_image" Enter
tmux send-keys -t wabsite:terminal "clear" Enter

tmux neww -n "editor"
tmux send-keys -t wabsite:editor "cdg website" Enter
tmux send-keys -t wabsite:editor "nv" Enter

tmux neww -n "ngrok"
tmux send-keys -t wabsite:ngrok "cdg website" Enter
tmux send-keys -t wabsite:ngrok "ng" Enter

# start config session
tmux new-session -d -s "configs" -n "config"
tmux send-keys -t config:config "cd ~/.config/nvim" Enter
tmux split-window -h
tmux send-keys -t config:config "cd ~/.config/tmux" Enter

tmux attach -t wabsite:editor

