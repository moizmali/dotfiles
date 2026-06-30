#! /bin/bash

notes_dir=Notes
date_file=`date +%F`

mkdir -p ~/$notes_dir
touch ~/$notes_dir/$date_file.md

if tmux has-session -t $notes_dir; then
    tmux attach-session -t $notes_dir
else
    tmux new-session -s $notes_dir -c ~/$notes_dir nvim $date_file.md
fi
