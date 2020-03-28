#!/bin/bash

########################################
# General
########################################
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y --fix-broken

sudo apt install -y software-properties-common checkinstall wget curl gpg
sudo apt install -y build-essential libssl-dev gcc automake screen zlib1g-dev libjpeg-dev
sudo apt install -y filezilla
sudo apt install -y synaptic
sudo apt install -y xvfb
sudo apt install -y gwenview

# Manage the repositories that you install
sudo apt-get install -y software-properties-common

# Install Oracle Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

########################################
# Utilities
########################################

# Google Chrome (64 bit)
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

# Multimedia codecs
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y libdvdcss2 libdvdnav4 libdvdread4

# Rar and other archiving utilities
sudo apt-get install -y unace p7zip-rar sharutils rar arj lunzip lzip gdebi

# Microsoft font
sudo apt-get install -y ttf-mscorefonts-installer

# Teamviewer (64 bit)
wget http://download.teamviewer.com/download/teamviewer_amd64.deb
sudo gdebi teamviewer_11.0.xxxxx_amd64.deb

# Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886
sudo apt-get update
sudo apt-get install -y spotify-client

# Shutter (Screenshot tool)
sudo add-apt-repository -y ppa:shutter/ppa
sudo apt-get update
sudo apt-get install -y libgoo-canvas-perl shutter

# Slack (64 bit)
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.2-amd64.deb
sudo gdebi slack-desktop-3.0.2-amd64.deb

# Keepass 2
# Put plugins in /usr/lib/keepass2/Plugins/ or /usr/lib/keepass2/plugins/
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-add-repository ppa:dlech/keepass2-plugins
sudo apt-get update
sudo apt-get install -y keepass2 mono-complete keepass2-plugin-application-menu keepass2-plugin-application-indicator

########################################
# Development
########################################

# Install Python-pip
sudo apt install -y python-pip

# GitKraken (64 bit)
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo gdebi gitkraken-amd64.deb

# Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
 sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
sudo docker run hello-world
sudo usermod -aG docker phellipe

# Ruby
sudo apt-get install ruby-full
ruby -v
sudo apt install gcc g++ make -y
sudo gem install -n /usr/local/bin cocoapods
gem update --system
gem -v
echo "gem: --no-document" >> ~/.gemrc
gem install rails -v 6.0.2.2
rails -v

#Setting Up MySQL
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev mysql-workbench

#Setting Up PostgreSQL
sudo apt install -y postgresql-11 libpq-dev

#VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update -y
sudo apt install -y code
# sudo chown -R $(whoami) /usr/share/code

# Use --force to update? Seems it doesn't work.
code --install-extension ms-python.python
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension ms-vscode.cpptools
code --install-extension coenraads.bracket-pair-colorizer
code --install-extension compulim.compulim-vscode-closetag
code --install-extension batisteo.vscode-django
code --install-extension bibhasdn.django-html
code --install-extension donjayamanne.githistory
code --install-extension yzhang.markdown-all-in-one
code --install-extension davidanson.vscode-markdownlint
code --install-extension dongli.python-preview
code --install-extension lextudio.restructuredtext
code --install-extension gruntfuggly.todo-tree
code --install-extension vscodevim.vim
code --install-extension vscode-icons-team.vscode-icons
code --install-extension tomoki1207.pdf
code --install-extension dotjoshjohnson.xml
code --install-extension bungcip.better-toml
code --install-extension grapecity.gc-excelviewer

#zsh
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

########################################
# Package Management
########################################

#snap
sudo apt install -y snapd
sudo snap install snap-store

#idea
sudo snap install intellij-idea-ultimate --classic

#flatpak
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#franz
flatpak install flathub com.meetfranz.Franz

########################################
# end
########################################
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
