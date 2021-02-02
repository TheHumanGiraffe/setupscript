#!/bin/bash
set -e

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


tap() {
    echo "I would be running brew tap $1" 
    # brew tap $1 
}

brew() {
    echo "I would be running brew install $1 " 
    # brew install $1 
}

cask() {
    echo "I would be running brew install --cask $1" 
    # brew install --cask $1 
}


# relevant third party stuff
tap "caskroom/cask"
tap "caskroom/fonts"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/versions"


# actual packages
# actual packages/the basics 
brew "zsh"
brew "p7zip"
brew "htop"
brew "jq"
brew "wget"
brew "curl"
brew "grep"

# actual packages/work stuff
brew "git"
brew "packer"
brew "terraform"
brew "docker"
brew "docker-compose"
brew "python@3.8"
brew "go@1.14"
brew "awscli"


# casks
# casks/the basics
cask "firefox"
cask "flycut"
cask "spotify"
cask "rambox"
cask "visual-studo-code"
cask "vlc"
cask "gimp"
cask "wireshark"
cask "adobe-acrobat-reader"
cask "bitwarden"
cask "iterm2"
cask "baritone"
cask "signal"
cask "termhere"

# casks/work stuff
cask "postman"
cask "docker"
cask "aws-vpn-client"
cask "slack"
cask "zoom"

# casks/touchbar
cask "pock"



# setup zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
# pull my profile for zsh and use it 
curl https://raw.githubusercontent.com/vmorganp/setupscript/master/zsh/.zshrc > ~/.zshrc
# change the shell to zsh 
chsh -s $(which zsh)


# maybe go try out dmenu on mac
# probably also want some remote desktop software in here
