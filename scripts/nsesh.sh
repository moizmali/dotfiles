#! /bin/bash

notes_dir_name=Notes
notes_dir_path=~/$notes_dir_name

mkdir -p $notes_dir_path

if tmux has-session -t $notes_dir_name; then
    tmux attach-session -t $notes_dir_name
else
    tmux new-session -d -s $notes_dir_name -c $notes_dir_path -n nvim 'nvim .'
    tmux new-window -t $notes_dir_name -c $notes_dir_path -n termial
    tmux attach-session -t $notes_dir_name:nvim
fi
