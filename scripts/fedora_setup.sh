#! /bin/bash

read -p "Is RPM Fusion installed and setup? (y/n): " response

case $response in
[yY])
	;;
[nN])
	echo "Please install RPM Fusion first as it is a requirement for this setup"
	exit 1
	;;
*)
	echo "Invalid input, exiting setup script"
	exit 1
	;;
esac

read -p "Is the Flathub remote setup? (y/n): " flResponse

case $flResponse in
[yY])
	;;
[nN])
	echo "Please setup the Flathub remote before running this script as it is required"
	exit 1
	;;
*)
	echo "Invalid input, exiting setup script"
	exit 1
	;;
esac

echo "Install script started!"

echo "Running updates..."
dnf update -y
echo "Updates completed!"

echo "Installing Neovim..."
dnf install -y neovim python3-neovim
echo "Neovim installed!"

echo "Installing Ripgrep..."
dnf install ripgrep -y
echo "Ripgrep installed!"

echo "Installing GNU Stow..."
dnf install stow -y
echo "GNU Stow installed!"

echo "Installing Flathub applications..."
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
flatpak install flathub net.ankiweb.Anki -y
echo "Flathub applications installed!"

echo "Install script completed!"
