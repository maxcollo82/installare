#!/bin/bash
echo "Nascondo le icone dal desktop..."
gsettings set org.nemo.desktop computer-icon-visible false
gsettings set org.nemo.desktop home-icon-visible false
gsettings set org.nemo.desktop trash-icon-visible false
gsettings set org.nemo.desktop network-icon-visible false
gsettings set org.nemo.desktop show-desktop-icons false
echo "Desktop pulito!"
