#! /bin/bash

directory=`find ~/Code -maxdepth 1 | fzf`
basename=`echo $directory | xargs basename`

if tmux has-session -t $basename; then
    tmux attach-session -t $basename
else
    tmux new-session -d -s $basename -c $directory -n nvim 'nvim .'
    tmux new-window -t $basename -c $directory -n terminal
    tmux attach-session -t $basename:nvim
fi
