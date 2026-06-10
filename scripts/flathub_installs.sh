#! /bin/bash

echo "Installing Flathub applications..."
flatpak install flathub com.github.jeromerobert.pdfarranger -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub org.localsend.localsend_app -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub de.haeckerfelix.Fragments -y
flatpak install flathub io.missioncenter.MissionCenter -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y
flatpak install flathub org.gnome.Papers -y
echo "Flathub applications installed!"
