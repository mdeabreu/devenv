#!/usr/bin/env bash

# This assumes you're in a distrobox created with the following command:
# distrobox create --image ubuntu:24.04 --name devenv

# Setup node development environment

sudo apt update
sudo apt dist-upgrade -y

# Install git
sudo apt install -y git

sudo apt install -y sqlite3

# Install prusa-slicer
sudo apt install -y prusa-slicer

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install node
nvm install v20.15.0
nvm alias default v20.15.0

# Install pnpm
npm install -g pnpm
