#!/bin/bash
echo "Inizio installazione software..."
sudo apt update
sudo apt install -y chromium-browser vlc gparted onlyoffice-desktopeditors
sudo apt autoremove -y
echo "Installazione completata!"
