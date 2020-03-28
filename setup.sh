#!/bin/bash
sudo apt-get install git -y

sudo apt-get update
sudo apt-get upgrade -y

#tweaks 
sudo apt install gnome-tweaks -y

# apps 
sudo snap install code --classic
sudo snap install spotify
sudo snap install discord
sudo snap install docker
sudo snap install vlc
sudo snap install gimp

# virtualbox
sudo apt-get install virtualbox -y

# #zsh
sudo apt install zsh curl -y
chsh -s $(which zsh)

# # oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc

# theme
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install arc-theme -y

# icons
sudo add-apt-repository -u ppa:snwh/ppa -y
sudo apt install paper-icon-theme -y


# etcher
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61
sudo apt-get update
sudo apt-get install balena-etcher-electron -y


# get rid of the shit
sudo apt-get purge thunderbird -y

echo "############################################"
echo "############################################"
echo "############################################"
echo ""
echo "go into tweak and update the icons and theme"
echo ""
echo "sign into discord/spotify/firefox"
echo ""
echo "install extensions on vscode"
echo ""
echo "restart to apply zsh update "
