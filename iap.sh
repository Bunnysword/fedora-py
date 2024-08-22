#! /bin/bash

#iap - install apps
sudo dnf config-manager --add-repo https://terra.fyralabs.com/terra.repo && sudo dnf in -y discord #Discord Terra
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf in -y code #VSC
#Install_Apps
sudo dnf in -y timeshift goverlay steam kdenlive vlc htop redhat-lsb-core inxi fastfetch protontricks openssl noisetorch openrgb nvtop --allowerasing
sudo dnf update -y --refresh #Update