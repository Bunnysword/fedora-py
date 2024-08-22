#!/bin/bash

#nvdd - nvidia driver
#flatpak install flathub com.leinardi.gwe for only X11
#nvdriver 555.58
sudo dnf --enablerepo=rpmfusion-nonfree-updates-testing install akmod-nvidia xorg-x11-drv-nvidia-libs.i686
#
flatpak install -y org.freedesktop.Platform.GL.nvidia-555-58-02
####nvidia-kms
cd conf/ && sudo mv nvidia-kms.conf /etc/modprobe.d/
cd ..