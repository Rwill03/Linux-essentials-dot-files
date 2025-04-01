#!/bin/bash

cd "$(dirname "$0")"

echo "🔹 Updating Git submodules..."
git submodule update --init --recursive

echo "🔹 Running Dotbot to manage symlinks..."
python3 dotbot/bin/dotbot -c install.conf.yaml

echo "🔹 Installing essential tools..."
# Update & Upgrade
sudo apt update && sudo apt upgrade -y

# Install basic utilities
sudo apt install -y curl wget git vim htop unzip tree

# Install Neofetch
sudo apt install -y neofetch

# Set up Neofetch with Purple Colors
mkdir -p ~/.config/neofetch
cat <<EOF > ~/.config/neofetch/config.conf
# Neofetch configuration with Purple Accent
ascii_distro="Ubuntu"
color_blocks="on"
ascii_colors=(5 5 5 5 5 5)
EOF

echo "✅ Installation complete! Neofetch has been configured with purple colors."
