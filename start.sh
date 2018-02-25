#!/bin/bash

# split-window  -c start-directory
#               -l size
#               -t target-pane shell-command
#               -F format

# new-window  -c start-directory
#             -F format
#             -n window-name
#             -t target-window
#             [shell-command]

# select-window -t target-window

# select-pane -P style -T title -t target-pane 
# select-layout -t target-window layout-name

# new-session -c start-directory -F format -n window-name -s session-name -t group-name -x width -y height shell-command

if ! pgrep -x "chromium" > /dev/null
then
  i3-msg exec chromium
fi

if ! pgrep -x "terminator" > /dev/null
then
  # terminator is not running
  i3-msg exec terminator
else
  sudo systemctl start redis
  sudo systemctl start httpd

  cd $HOME/motizium
  tmux new-session -c $HOME/motizium -d -s motizium -n motizium 
  # tmux new-window -t motizium:1 -n window
  tmux split-window -t motizium:0 "./start.sh"
  tmux select-pane -t motizium:0.0
  tmux resize-pane -t motizium:0.1 -y 2
  tmux attach-session -d -t motizium
fi


# tmux new-window -t motizium:1 -n "ls"
# tmux split-window -t motizium:1 -n "ls"

# tmux rename-window -t motizium:1 "shell"

# tmux select-window -t motizium:0
# tmux split-window -t motizium:0 "ls"

# tmux new-window -t motizium:2 -n servers "./start.sh"

