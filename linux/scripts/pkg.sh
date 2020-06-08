#!/usr/bin/env bash

# Force update port binaries
pkg update -f

# Install git
pkg install -y git rsync

# Install define deps
pkg install -y wordnet aspell en-aspell
