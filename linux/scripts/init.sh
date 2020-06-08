#!/usr/bin/env bash

# Get path to this script
# @inspired by https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself#comment49674774_11114547
SCRIPT_PATH=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Packages                                                                    # 
###############################################################################

# Init bash
source `$SCRIPT_PATH/../../lib/bash/bootstrap.sh`

# Init vim backup file directories
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo


echo "Done. Note that some of these changes require a logout/restart to take effect."


