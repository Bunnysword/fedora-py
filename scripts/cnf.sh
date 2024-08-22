#! /bin/bash

#cnf - configs
cd conf/
mkdir ~/.config/OpenRGB
mv 1.orp ~/.config/OpenRGB/ #OpenRGB
mkdir ~/.config/fastfetch
mv config.jsonc ~/.config/fastfetch/ && #fastfetch
mkdir ~/.config/MangoHud
mv MangoHud.conf ~/.config/MangoHud/ #MangoHud
sudo mv environment /etc #shaders
mkdir ~/.steam/ && mkdir ~/.steam/steam/
mv steam_dev.cfg ~/.steam/steam/ #steam tips
git clone https://github.com/JustTemmie/steam-presence
mv config.json steam-presence/ && cd steam-presence/ && ./installer.sh
cd .. && cd .. #steam-presence
