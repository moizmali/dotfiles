#! /bin/bash

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
apt update -y
echo "Updates completed!"

echo "Installing Git..."
apt install git -y
echo "Git installed!"

echo "Installing Ripgrep..."
apt install ripgrep -y
echo "Ripgrep installed!"

echo "Installing GNU Stow..."
apt install stow -y
echo "GNU Stow installed!"

echo "Installing FZF..."
apt install fzf -y
echo "FZF installed!"

# Install the Flathub Apps
sh scripts/flathub_installs.sh

echo "Install script completed!"
