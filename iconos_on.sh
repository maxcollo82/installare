#!/bin/bash
echo "Ripristino le icone sul desktop..."
gsettings set org.nemo.desktop computer-icon-visible true
gsettings set org.nemo.desktop home-icon-visible true
gsettings set org.nemo.desktop trash-icon-visible true
gsettings set org.nemo.desktop network-icon-visible true
gsettings set org.nemo.desktop show-desktop-icons true
echo "Icone ripristinate!"
