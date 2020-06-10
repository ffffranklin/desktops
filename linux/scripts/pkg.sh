#!/bin/sh

# Force update port binaries
sudo pkg update -f

# Install git
sudo pkg install -y git rsync

# Install define deps
sudo pkg install -y wordnet aspell en-aspell
