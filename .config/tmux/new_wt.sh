#!/bin/bash
if [ -z "$1" ]; then
    echo "No branch given"
    return
fi


new_branch="$1"
session_name=$(tmux display-message -p "#S")
clean_branch="$(echo "$new_branch" | tr "/" "__")"
target="$session_name:$clean_branch"

terminal-notifier -title "Build for $target started." -message "Branch name: $new_branch"

if ! tmux has-session -t $target 2> /dev/null; then
    tmux neww -dn $clean_branch
fi

source ~/.bash_wab
tmux send-keys -t "$target" "new_wt $new_branch" Enter

