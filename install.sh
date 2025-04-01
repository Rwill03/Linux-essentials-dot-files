#!/bin/bash

echo "🔹 Starting installation of essential tools..."

# Update & Upgrade
sudo apt update && sudo apt upgrade -y

# Install basic utilities
sudo apt install -y curl wget git vim htop unzip tree

# Install Neofetch
sudo apt install -y neofetch

# Set up dotfiles
cp .bashrc ~/.bashrc
cp .profile ~/.profile
[ -f .vimrc ] && cp .vimrc ~/.vimrc
[ -f .gitconfig ] && cp .gitconfig ~/.gitconfig

# Set up Neofetch with Purple Colors
mkdir -p ~/.config/neofetch
cat <<EOF > ~/.config/neofetch/config.conf
colors=(9 9 9 9 9 9)
EOF

echo "✅ Installation complete. Restart your terminal for changes to take effect!"

