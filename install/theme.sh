#!/bin/bash

# Define variables
CATPPUCCIN_REPO="https://github.com/catppuccin/gtk/releases/download/v0.7.1/Catppuccin-Mocha-Standard-Red-Dark.zip"
THEME_DIR="$HOME/.themes"
THEME_NAME="Catppuccin"

# Install dependencies
sudo apt update
sudo apt install -y gnome-themes-extra gnome-tweaks install gnome-shell-extensions


# Download and unzip the theme
wget -O catppuccin.zip $CATPPUCCIN_REPO
mkdir -p $THEME_DIR
unzip catppuccin.zip -d $THEME_DIR

# Remove the downloaded zip file
rm catppuccin.zip

echo "Catppuccin theme installation complete."

