#!/usr/bin/env bash

source setup_common.sh

# Remove trash can from desktop
gsettings set org.gnome.nautilus.desktop trash-icon-visible false

# Perfect GNOME dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
gsettings set org.gnome.desktop.background show-desktop-icons false

sudo apt install htop
sudo apt install tree

# Case-insensitive tab completion
echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc
