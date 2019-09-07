#!/bin/sh

# standard updates and upgrades
sudo apt-get update && sudo apt-get upgrade;

#discord
sudo apt-get install discord

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -;
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
sudo apt-get update && sudo apt-get install spotify-client;

#vscode
sudo apt-get install code

#intellij
sudo snap install intellij-idea-community --classic

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"
sudo apt-get update
sudo apt-get install virtualbox-5.2

# zsh
apt install zsh
chsh -s /usr/bin/zsh root

# git
apt install wget git

# oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp .zshrc ~/.zshrc
source ~/.zshrc
