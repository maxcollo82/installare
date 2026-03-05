#!/bin/bash

echo "--- AVVIO MANUTENZIONE SISTEMA (Asti Linux Toolkit) ---"

# 1. Aggiornamento dei pacchetti esistenti
echo "Aggiornamento dei repository..."
sudo apt update && sudo apt upgrade -y

# 2. Installazione Software Extra (se non già presenti)
echo "Installazione strumenti di manutenzione..."
sudo apt install -y vlc gparted chromium-browser onlyoffice-desktopeditors

# 3. Pulizia lingue inutilizzate (per liberare spazio)
echo "Pulizia pacchetti lingue non necessari..."
sudo apt autoremove --purge -y

# 4. Pulizia della cache dei pacchetti
echo "Pulizia della cache di sistema..."
sudo apt autoclean
sudo apt clean

echo "--- MANUTENZIONE COMPLETATA CON SUCCESSO! ---"
