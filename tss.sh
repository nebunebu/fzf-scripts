#!/bin/sh

# tmux-session -d -s "whatever bs typed into fzf"

tmux switch -t "$(tmux ls | awk -F ":" '{print $1}' | fzf)"
