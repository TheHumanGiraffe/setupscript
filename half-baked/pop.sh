#!/bin/sh
apt update

# stuff that makes games work
apt install steam lutris wine-stable -y

# standard stuff I install
apt install code gnome-tweaks discord flameshot copyq vlc virtualbox-y

flatpak install signal
flatpak intsall spotify
# zsh
apt install zsh curl -y
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl https://raw.githubusercontent.com/TheHumanGiraffe/setupscript/master/.zshrc > ~/.zshrc

