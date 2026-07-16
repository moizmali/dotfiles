#! /bin/bash

notes_dir=Notes

mkdir -p ~/$notes_dir

if tmux has-session -t $notes_dir; then
    tmux attach-session -t $notes_dir
else
    tmux new-session -d -s $notes_dir -c ~/$notes_dir -n nvim 'nvim .'
    tmux new-window -t $notes_dir -n termial
    tmux attach-session -t $notes_dir:nvim
fi
