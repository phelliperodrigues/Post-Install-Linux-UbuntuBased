#!/bin/bash
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m********************    Script Post Instalation Ubuntu    ***********************"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m                _____          _     _____           _        _ "
echo -e "\e[96m               |  __ \        | |   |_   _|         | |      | |"
echo -e "\e[96m               | |__) |__  ___| |_    | |  _ __  ___| |_ __ _| |"
echo -e "\e[96m               |  ___/ _ \/ __| __|   | | | '_ \/ __| __/ _\` | |"
echo -e "\e[96m               | |  | (_) \\__ \\ |_   _| |_| | | \\__ \\ || (_| | |"
echo -e "\e[96m               |_|   \\___/|___/\\__| |_____|_| |_|___/\\__\\__,_|_|"
echo " "
echo " "
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[95mDevelopers: Phellipe Rodrigues / Wendreo Fernandes" 
echo -e "\e[95mRepository: \e[92mhttps://github.com/phelliperodrigues/Post-Install-Linux-UbuntuBased"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m********************      Thanks For Use This Script      ***********************"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo " "
echo " "
echo -e "\e[91m---- \e[5mWARNING \e[25m----"
echo -e "\x1b[91mThis script has installations of the APT / FLATPAK / SNAP packages"
echo -e "\x1b[91mIt was developed and tested on UBUNTU 18.04"


 sleep 5
                                                  

echo -e '\e[34m########################################'
echo -e '\e[34m# UPDATE'
echo -e '\e[34m########################################'
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y --fix-broken
echo " "
echo " "
echo -e '\e[34m########################################'
echo -e '\e[34m# UTILITARIOS'
echo -e '\e[34m########################################'

echo -e "\e[95mInstall Commouns: [Ss,Nn] - Default(S)"
read continuar
case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN Commons<<<<<<<<<<<<<<<<<<<"
	sudo apt install -y software-properties-common checkinstall wget curl gpg
	sudo apt install -y build-essential libssl-dev gcc automake screen zlib1g-dev libjpeg-dev
	sudo apt install -y filezilla
	sudo apt install -y synaptic
	sudo apt install -y xvfb
	sudo apt install -y gwenview
	sudo apt install -y gdebi
	sudo apt intall -y snapd
	sudo apt install -y flatpak
	sudo apt install -y gnome-software-plugin-flatpak
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END Commons<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Google Chrome: : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN CHROME<<<<<<<<<<<<<<<<<<<"
	# Google Chrome (64 bit)
	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo gdebi google-chrome-stable_current_amd64.deb
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END CHROME<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Codecs: : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN codecs<<<<<<<<<<<<<<<<<<<"
	# Multimedia codecs
	sudo apt-get install -y ubuntu-restricted-extras
	sudo apt-get install -y libdvdcss2 libdvdnav4 libdvdread4
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END codecs<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Archiving's: : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN RAR<<<<<<<<<<<<<<<<<<<"
	# Rar and other archiving utilities
	sudo apt-get install -y unace p7zip-rar sharutils rar arj lunzip lzip gdebi
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END RAR<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Font Microsoft : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN FONT<<<<<<<<<<<<<<<<<<<"
	# Microsoft font
	sudo apt-get install -y ttf-mscorefonts-installer
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END FONT<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Teamviewer : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN TEAMVIWER<<<<<<<<<<<<<<<<<<<"
	# Teamviewer (64 bit)
	wget http://download.teamviewer.com/download/teamviewer_amd64.deb
	sudo gdebi teamviewer_11.0.xxxxx_amd64.deb
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END TEAMVIWER<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Spotify : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN SPOTIFY<<<<<<<<<<<<<<<<<<<"
	# Spotify
	sudo snap install spotify
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END SPOTIFY<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall Shutter : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN SHUTTER<<<<<<<<<<<<<<<<<<<"
	# Shutter (Screenshot tool)
	sudo add-apt-repository -y ppa:shutter/ppa
	sudo apt-get update
	sudo apt-get install -y libgoo-canvas-perl shutter
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END SHUTTER<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "
echo -e "\e[95mInstall Keepass : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN KEEPASS<<<<<<<<<<<<<<<<<<<"
# Keepass 2
	# Put plugins in /usr/lib/keepass2/Plugins/ or /usr/lib/keepass2/plugins/
	sudo apt-add-repository ppa:jtaylor/keepass
	sudo apt-add-repository ppa:dlech/keepass2-plugins
	sudo apt-get update
	sudo apt-get install -y keepass2 mono-complete keepass2-plugin-application-menu keepass2-plugin-application-indicator
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END KEEPASS<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall wps : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN wps<<<<<<<<<<<<<<<<<<<"
	sudo snap install wps-office-all-lang-no-internet
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END wps<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall zsh : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN zsh<<<<<<<<<<<<<<<<<<<"
	sudo apt install zsh
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	sudo apt-get install -y fonts-powerline

	echo -e "\e[92m>>>>>>>>>>>>>>>>>END zsh<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "



echo -e '\e[34m########################################'
echo -e '\e[34m# Development'
echo -e '\e[34m########################################'

echo -e "\e[95mInstall Oracle Java: : [Ss,Nn] - Default(S)"
read continuar
case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN JAVA<<<<<<<<<<<<<<<<<<<"
	# Install Oracle Java
	sudo apt install default-jdk
	echo "Version Java"
	java -version
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END JAVA<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall NodeJs: : [Ss,Nn] - Default(S)"
read continuar
case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN NodeJs<<<<<<<<<<<<<<<<<<<"
	curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
	sudo apt-get install -y nodejs
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END NodeJs<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall Python : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN PYTHON<<<<<<<<<<<<<<<<<<<"
	# Install Python-pip
	sudo apt install python3       
	sudo apt install -y python-pip
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END PYTHON<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall GitKraken : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN GITKRAKEN<<<<<<<<<<<<<<<<<<<"
	# GitKraken (64 bit)
	wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
	sudo gdebi gitkraken-amd64.deb
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END KRAKEN<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall Docker : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN DOCKER<<<<<<<<<<<<<<<<<<<"
	# Docker
	sudo apt-get update
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
	sleep 10
	echo 'UPDATE'
	sudo apt update
	apt-cache policy docker-ce
	sudo apt install -y docker-ce
	sudo systemctl status docker
	sudo usermod -aG docker ${USER}

	echo -e "\e[92m>>>>>>>>>>>>>>>>>END DOCKER<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall MySQL : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN MYSQL<<<<<<<<<<<<<<<<<<<"
	#Setting Up MySQL
	sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev mysql-workbench
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END MYSQL<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall PostgreSQL : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN POSTGRES<<<<<<<<<<<<<<<<<<<"
	#Setting Up PostgreSQL
	sudo apt install -y postgresql-11 libpq-dev
	wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
 	sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
	sudo apt update
 	sudo apt install -y pgadmin4 pgadmin4-apache2 -y
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END POSTGRES<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall postman : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN postman<<<<<<<<<<<<<<<<<<<"
	sudo snap install postman
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END postman<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall insomnia : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN insomnia<<<<<<<<<<<<<<<<<<<"
	sudo snap install insomnia
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END insomnia<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall datagrip : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN datagrip<<<<<<<<<<<<<<<<<<<"
	sudo snap install datagrip --classic
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END datagrip<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall code : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN code<<<<<<<<<<<<<<<<<<<"
	sudo snap install code --classic
	code --install-extension visualstudioexptteam.vscodeintellicode
	code --install-extension ms-vscode.cpptools
	code --install-extension coenraads.bracket-pair-colorizer
	code --install-extension compulim.compulim-vscode-closetag
	code --install-extension donjayamanne.githistory
	code --install-extension yzhang.markdown-all-in-one
	code --install-extension davidanson.vscode-markdownlint
	code --install-extension dongli.python-preview
	code --install-extension lextudio.restructuredtext
	code --install-extension gruntfuggly.todo-tree
	code --install-extension vscode-icons-team.vscode-icons
	code --install-extension tomoki1207.pdf
	code --install-extension dotjoshjohnson.xml
	code --install-extension bungcip.better-toml
	code --install-extension grapecity.gc-excelviewer
	code --install-extension theme-dracula-at-night
	code --install-extension vscode-java-debug
	code --install-extension vscjava.vscode-maven
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension pivotal.vscode-spring-boot
	code --install-extension vscjava.vscode-spring-initializr
	code --install-extension vscjava.vscode-spring-boot-dashboard
	code --install-extension redhat.vscode-yaml
	code --install-extension ecmel.vscode-html-css
	code --install-extension abusaidm.html-snippets
	code --install-extension rocketseat.rocketseatreactnative
	code --install-extension rocketseat.rocketseatreactjs
	code --install-extension johnpapa.angular2
	code --install-extension dart-code.flutter
	code --install-extension dart-code.dart-code
	code --install-extension rebornix.ruby
	code --install-extension misogi.ruby-rubocop
	code --install-extension hridoy.rails-snippets
	code --install-extension ms-vscode.go
	code --install-extension mjmcloug.vscode-elixir
	code --install-extension pedromsluz.vscode-phoenix
	code --install-extension batisteo.vscode-django
	code --install-extension cmstead.jsrefactor
	code --install-extension natqe.reload

	echo -e "\e[92m>>>>>>>>>>>>>>>>>END code<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall circleci : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN circleci<<<<<<<<<<<<<<<<<<<"
	sudo snap install circleci
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END circleci<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall android-studio : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN android-studio<<<<<<<<<<<<<<<<<<<"
	sudo snap install android-studio --classic
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END android-studio<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall androidsdk : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN androidsdk<<<<<<<<<<<<<<<<<<<"
	sudo snap install androidsdk
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END androidsdk<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "


echo -e "\e[95mInstall intellij-idea-community : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN intellij-idea-community<<<<<<<<<<<<<<<<<<<"
	sudo snap install intellij-idea-community --classic
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END intellij-idea-community<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "



echo -e "\e[95mInstall intellij-idea-ultimate : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN intellij-idea-ultimate<<<<<<<<<<<<<<<<<<<"
	sudo snap install intellij-idea-ultimate --classic
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END intellij-idea-ultimate<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "








echo -e '\e[34m########################################'
echo -e '\e[34m# Messagering/Internet'
echo -e '\e[34m########################################'

echo -e "\e[95mInstall franz : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN FRANZ<<<<<<<<<<<<<<<<<<<"
	#franz
	flatpak install flathub com.meetfranz.Franz
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END FRANZ<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall zoom : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN zoom<<<<<<<<<<<<<<<<<<<"
	sudo snap install zoom-client
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END zoom<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e "\e[95mInstall slack : [Ss,Nn] - Default(S)"
read continuar

case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN slack<<<<<<<<<<<<<<<<<<<"
	sudo snap install slack --classic
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END slack<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;
esac
echo " "
echo " "

echo -e '\e[34m########################################'
echo -e '\e[34m# UPDATE FINISH'
echo -e '\e[34m########################################'
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m********************      \e[5mThanks For Use This Script      \e[25m***********************"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
sleep 5
echo " "
echo " "
echo -e '\e[34m########################################'
echo -e '\e[34m# REBOOT IN 15s - CTRL+C to Cancel Reboot'
echo -e '\e[34m########################################'
sleep 15
reboot