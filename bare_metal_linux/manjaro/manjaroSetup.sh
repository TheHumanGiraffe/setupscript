# manjaro setup

#upgrade all
sudo pacman -Syyu --noconfirm


# install the stuff I want that doesn't need snap
sudo pacman -s code docker vlc gimp discord virtualbox signal-dekstop --noconfirm

# set up snap
sudo pacman -S snapd --noconfirm
sudo systemctl enable snapd
snap --version

# apps 
sudo snap install spotify

# # make docker play nice without sudo
# sudo groupadd docker
# sudo gpasswd -a $USER docker
# sudo service docker restart
# sudo service docker.io restart

# set up i3 gaps
sudo pacman -S i3-gaps i3lock i3status --noconfirm

# Install zsh & oh-my-zsh
sudo pacman -S git zsh --noconfirm 
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)
echo "logout to apply zsh update"
