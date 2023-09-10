#!/usr/bin/env bash
#
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# For permissions management
flatpak install flathub com.github.tchx84.Flatseal
