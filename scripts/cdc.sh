#! /bin/bash

#cdc - codecs
sudo dnf in -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf in -y lame\* --exclude=lame-devel && sudo dnf group upgrade -y Multimedia --with-optional --allowerasing
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin && sudo dnf groupupdate -y sound-and-video
