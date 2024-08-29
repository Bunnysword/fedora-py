#!/bin/bash

#nvdd - nvidia driver
#flatpak install flathub com.leinardi.gwe for only X11
sudo dnf install dnf-plugins-core
sudo dnf copr enable codifryed/CoolerControl
sudo dnf install coolercontrol
sudo systemctl enable --now coolercoorg.fredesktop.Pla
#560.28.03
sudo dnf --enablerepo=rpmfusion-nonfree-updates-testing install akmod-nvidia-open xorg-x11-drv-nvidia-libs.i686 xorg-x11-drv-nvidia-cuda-libs.i686
#
flatpak install -y org.freedesktop.Platform.GL.nvidia-555-58-02
####nvidia-kms
cd conf/ && sudo mv nvidia-kms.conf /etc/modprobe.d/
cd ..
