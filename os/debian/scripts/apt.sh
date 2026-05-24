#!/usr/bin/env bash
packages=()

# Other useful binaries
packages+=(ack fd-find git git-lfs lynx pandoc pv rename tree jq yq)

# Other wordnet (useful for word discovery)
packages+=(wordnet)

# Graphic design programs
packages+=(inkscape gimp)

# Ruby Environment
packages+=(rbenv ruby-build)

# Diff so fancy (see gitconfig)
packages+=(diff-so-fancy)

# Image magic (useful for strippign exif data from photos)
packages+=(imagemagick)

# Exif (view photo info)
packages+=(exif)

# Virtualization
packages+=(virtualbox)

# Add podman (docker alternative)
packages+=(podman podman-docker podman-compose)

## Add docker (for localstack) (needed?)
#packages+=(docker)
## To run docker daemon without docker desktop
#packages+=(colima)

# Ask for admin password up front
sudo -v

# Add special repositories
sudo add-apt-repository ppa:aos1/diff-so-fancy

# update installed packages
sudo apt update
sudo apt upgrade -y

sudo apt-get install -y "${packages[@]}"

sudo apt-get autoremove
sudo apt-get clean
sudo apt-get autoclean
