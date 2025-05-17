#!/bin/bash

# Setup the Nvim Config Environment
SESSION_NAME=VimConf
tmux has-session -t $SESSION_NAME 2>/dev/null
if [ $? != 0 ]; then
  # Create the Session
  tmux new-session -d -s $SESSION_NAME

  # Create all the Windows
  tmux new-window -t $SESSION_NAME:2 -n 'conf'
  tmux new-window -t $SESSION_NAME:3 -n 'bash'

  # Give all windows a small terminal in a vertical split
  # tmux split-window -v -y 5 -t $SESSION_NAME:2

  # Send Commnds to move terminal to correct place
  tmux send-keys -t $SESSION_NAME:2 'cd /home/tyler/.config/nvim' C-m
  tmux send-keys -t $SESSION_NAME:2 'nvim .' C-m
  tmux send-keys -t $SESSION_NAME:3 'cd /home/tyler/.config/nvim' C-m

  # Move the first default window to the last position
  tmux swap-window -s $SESSION_NAME:1 -t $SESSION_NAME:2
  tmux swap-window -s $SESSION_NAME:2 -t $SESSION_NAME:3

  # kill the default window
  tmux kill-window -t $SESSION_NAME:3
fi

SESSION_NAME=DndInteractive
tmux has-session -t $SESSION_NAME 2>/dev/null
if [ $? != 0 ]; then
  # Create the Session
  tmux new-session -d -s $SESSION_NAME

  # Create Window for the terminal of the project
  tmux new-window -t $SESSION_NAME -n 'DndFront'
  tmux new-window -t $SESSION_NAME -n 'DndBack'
  tmux new-window -t $SESSION_NAME -n 'DndShared'
  # tmux new-window -t $SESSION_NAME -n 'temp'

  # Send some commands to the main window to make sure we are in the right project
  tmux send-keys -t $SESSION_NAME:2 'cd $DND_HOME/Dnd-Interactive-Frontend' C-m
  tmux send-keys -t $SESSION_NAME:3 'cd $DND_HOME/Dnd-Interactive-Backend' C-m
  tmux send-keys -t $SESSION_NAME:4 'cd $DND_HOME/Dnd-Interactive-Shared' C-m

  tmux send-keys -t $SESSION_NAME:2 'nvim .' C-m
  tmux send-keys -t $SESSION_NAME:3 'nvim .' C-m
  tmux send-keys -t $SESSION_NAME:4 'nvim .' C-m

  # Set the terminal in the right place
  tmux split-window -h -t $SESSION_NAME:1
  tmux split-window -h -t $SESSION_NAME:1
  tmux split-window -h -t $SESSION_NAME:1

  tmux send-keys -t $SESSION_NAME:1.1 'cd $DND_HOME/Dnd-Interactive-Frontend' C-m
  tmux send-keys -t $SESSION_NAME:1.2 'cd $DND_HOME/Dnd-Interactive-Backend' C-m
  tmux send-keys -t $SESSION_NAME:1.3 'cd $DND_HOME/Dnd-Interactive-Shared' C-m
  tmux send-keys -t $SESSION_NAME:1.4 'cd $DND_HOME/' C-m

  tmux select-layout -t $SESSION_NAME:1 tiled

  tmux move-window -r -s $SESSION_NAME:1 -t $SESSION_NAME:6

fi

SESSION_NAME=MNC
tmux has-session -t $SESSION_NAME 2>/dev/null
if [ $? != 0 ]; then
  # Create the Session
  tmux new-session -d -s $SESSION_NAME

  # Create Window for the terminal of the project
  tmux new-window -t $SESSION_NAME -n 'Front'
  tmux new-window -t $SESSION_NAME -n 'Back'
  tmux new-window -t $SESSION_NAME -n 'DB'
  # tmux new-window -t $SESSION_NAME -n 'temp'

  # Send some commands to the main window to make sure we are in the right project
  tmux send-keys -t $SESSION_NAME:2 'cd $MNC_HOME/Frontend' C-m
  tmux send-keys -t $SESSION_NAME:3 'cd $MNC_HOME/Backend/Acarolinecreative-spring/' C-m
  tmux send-keys -t $SESSION_NAME:4 'cd $MNC_HOME/Backend/Docker-Services' C-m

  tmux send-keys -t $SESSION_NAME:2 'nvim .' C-m
  tmux send-keys -t $SESSION_NAME:3 'nvim .' C-m
  tmux send-keys -t $SESSION_NAME:4 'nvim .' C-m

  # Set the terminal in the right place
  tmux split-window -h -t $SESSION_NAME:1
  tmux split-window -h -t $SESSION_NAME:1
  tmux split-window -h -t $SESSION_NAME:1

  tmux send-keys -t $SESSION_NAME:1.1 'cd $MNC_HOME/Frontend' C-m
  tmux send-keys -t $SESSION_NAME:1.2 'cd $MNC_HOME/Backend/Acarolinecreative-spring' C-m
  tmux send-keys -t $SESSION_NAME:1.3 'cd $MNC_HOME/Backend/Docker-Services' C-m
  tmux send-keys -t $SESSION_NAME:1.4 'cd $MNC_HOME/' C-m

  tmux select-layout -t $SESSION_NAME:1 tiled

  tmux move-window -r -s $SESSION_NAME:1 -t $SESSION_NAME:6

fi
