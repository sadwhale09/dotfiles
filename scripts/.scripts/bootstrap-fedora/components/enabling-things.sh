#!/bin/bash

## Change hostname:
#sudo hostnamectl set-hostname "New_Custom_Name"

## DNF CONFIGURATION
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf
sudo dnf update -y && sudo dnf upgrade -y

## OPTIONAL: Fedora 38 thing: ENABLIBG DNF5
#sudo dnf install dnf5 dnf5-plugins

## OPTIONAL: Firmware Updates
#sudo fwupdmgr refresh --force
#sudo fwupdmgr get-updates
#sudo fwupdmgr update

## ENABLE RPMFUSION
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade -y --refresh
sudo dnf groupupdate -y core

## CONFIGURATION OF RPMFUSION
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

## MULTIMEDIA
## https://rpmfusion.org/Howto/Multimedia
## Switch to full ffmpeg
## This solves problems of out-ouf-sync video and audio after scrolling in MPV
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing

## Install media codecs
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia

## Install additional codec
## The following command will install the complements multimedia packages needed by gstreamer enabled applications:
#sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
#
# etc...

## Install software
sudo dnf in vlc -y
