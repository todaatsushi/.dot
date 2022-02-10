#!/bin/bash
source ~/.bash_wab

if [ -z "$1" ]; then
    echo "No branch given"
    return
fi

new_branch="$1"
session_name=$(tmux display-message -p "#S")
clean_branch="$(echo "$new_branch" | tr "/" "__")"
target="$session_name:$clean_branch"

if ! tmux has-session -t $target 2> /dev/null; then
    tmux neww -dn $clean_branch
fi

tmux send-keys -t "$target" new_wt " " "$new_branch" Enter `terminal-notifier -title "Build complete: $target" -subtitle "Branch name: $new_branch" --sound default` Enter

