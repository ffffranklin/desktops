#!/usr/bin/env bash

# First install tmux
brew install tmux

## For mouse support (for switching panes and windows)
## Only needed if you are using Terminal.app (iTerm has mouse support)
## Install http://www.culater.net/software/SIMBL/SIMBL.php
## Then install https://bitheap.org/mouseterm/

## More on mouse support http://floriancrouzat.net/2010/07/run-tmux-with-mouse-support-in-mac-os-x-terminal-app/

## Enable mouse support in ~/.tmux.conf
# set-option -g mouse-select-pane on
# set-option -g mouse-select-window on
# set-window-option -g mode-mouse on

## Install Teamocil to pre define workspaces
# https://github.com/remiprev/teamocil

# See http://files.floriancrouzat.net/dotfiles/.tmux.conf for configuration examples
