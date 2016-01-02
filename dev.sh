#!/bin/bash

tmux new-session -d 'vim'
tmux split-window -h
tmux -2 attach-session -d
var = $(tmux display-message -p "#S")
tmux rename-session [-t ${var}] [IDE]
