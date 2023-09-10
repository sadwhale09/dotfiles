#!/bin/env bash

# Tainded and non-free repos
sh ./components/enabling-things.sh

# Tmux bootstrap
# sh ./components/tmux.sh

# Install must-have packages
sudo dnf5 in $(cat ./packages/must-have-packages) -y
