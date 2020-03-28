#!/bin/bash

# general updates
sudo pacman -Syu --noconfirm

# apps I like
sudo pacman -S zsh discord code virtualbox git --noconfirm

# zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh -s /usr/bin/zsh
cp .zshrc ~/.zshrc

# snap
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# other stuff I like that requires snap
sudo snap install spotify
sudo snap install signal-desktop




