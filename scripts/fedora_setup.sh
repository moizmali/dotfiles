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

read -p "Are all the software packages up to date? (y/n): " updateResponse

case $updateResponse in
[yY])
	;;
[nN])
	echo "Please make sure all updates are downloaded and setup from the GNOME Software Center"
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

echo "Installing FZF..."
dnf install fzf -y
echo "FZF installed!"

# Install the Flathub Apps
sh scripts/flathub_installs.sh

echo "Install script completed!"
