#! /bin/bash

#dec - desktop envoment configurations
sudo dnf in -y papirus-icon-theme
if [ -n "$XDG_CURRENT_DESKTOP" ]; then
  case "$XDG_CURRENT_DESKTOP" in
    GNOME)
echo 'GNOME Tips'
sudo sed -i "6i AutomaticLoginEnable=True\nAutomaticLogin=bunnysword" /etc/gdm/custom.conf #autologin in GDM
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-step 1
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' && gsettings set org.gnome.desktop.interface icon-theme 'Papirus'
sudo dnf copr enable -y trixieua/mutter-patched
sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/tcp && sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/udp && sudo systemctl restart firewalld.service #GSCONNECT
sudo dnf rm -y mediawriter rhythmbox evince yelp gnome-characters gnome-logs gnome-tour gnome-photos gnome-maps gnome-weather gnome-font-viewer gnome-contacts gnome-clocks gnome-calendar gnome-boxes libreoffice* power-profiles-daemon
sudo dnf in -y transmission-gtk gnome-tweaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub -y com.mattjakeman.ExtensionManager
#EXTENSIONS
gnome-extensions disable background-logo@fedorahosted.org
      ;;
    KDE)
echo 'KDE Tips'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita' && plasma-apply-colorscheme BreezeDark
sudo dnf rm -y kolourpaint mediawriter okular skanpage kmahjongg kmines kpat akregator kmail ktnef sieveeditor neochat contactprintthemeeditor contactthemeeditor pimdataexporter dragonplayer elisa kamoso korganizer kcharselect kmousetool
sudo dnf in -y transmission-qt
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
      ;;
  esac
fi
#Services
sudo systemctl mask plymouth-quit-wait.service && systemctl disable livesys-late.service && systemctl disable livesys.service && systemctl disable rpcbind.service && systemctl disable lvm2-monitor.service && systemctl disable NetworkManager-wait-online.service #Disable
sudo cp services/wakeup-disable_GPP0.service /etc/systemd/system/ && sudo systemctl enable wakeup-disable_GPP0.service && sudo systemctl start wakeup-disable_GPP0.service #B550 fix