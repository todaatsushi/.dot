#!/bin/bash
if [ -z "$1" ]; then
    echo "No branch given"
    return
fi

new_branch="$1"
session_name=$(tmux display-message -p "#S")
clean_branch="$(echo "$new_branch" | tr "/" "__")"
target="$session_name:$clean_branch"

num_windows=$(tmux list-windows -F "#I" | tail -n 1)
std_port_used=$(lsof -i -P -n | grep LISTEN | grep 8000)

if ! tmux has-session -t $target 2> /dev/null; then
    tmux neww -dn $clean_branch
fi

terminal-notifier -title "Build for $target started." -message "Branch name: $new_branch"

source ~/.bash_wab
if [ -z std_port_used ]; then
    tmux send-keys -t "$target" "new_wt $new_branch" Enter
else
    tmux send-keys -t "$target" "new_wt $new_branch $num_windows" Enter
fi

