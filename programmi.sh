#!/bin/bash

# Colori per il terminale
VERDE='\033[0;32m'
NC='\033[0m' # No Color (Torna al bianco)

clear
echo -e "${VERDE}###############################################${NC}"
echo -e "${VERDE}#       AVVIO INSTALLAZIONE SYSADMIN MAX      #${NC}"
echo -e "${VERDE}#    Sicurezza, Programmi e DOSBox pronti!    #${NC}"
echo -e "${VERDE}###############################################${NC}"
echo ""


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

# --- INSTALLAZIONE PACCHETTI COMPLETA (Asti Linux Toolkit) ---
echo "Avvio installazione pacchetti principali..."

# 1. Aggiornamento dei repository
sudo apt update

# 2. Installazione Software (Browser, Media, Ufficio, Sistema, Grafica, Remoto)
# Abbiamo aggiunto: GIMP (grafica) e Remmina (controllo remoto)
echo "Installazione in corso: Chromium, VLC, GParted, OnlyOffice, GIMP, Remmina..."
sudo apt install -y chromium-browser vlc gparted onlyoffice-desktopeditors gimp remmina neofetch

# 3. Pulizia finale
echo "Pulizia pacchetti non necessari..."
sudo apt autoremove -y
sudo apt autoclean

echo "------------------------------------------------"
echo "--- INSTALLAZIONE COMPLETATA CON SUCCESSO! ---"
echo "--- Grafica e Controllo Remoto pronti!      ---"
echo "------------------------------------------------"

# Mostra le info del sistema alla fine
neofetch

# Attivazione automatica del Firewall (UFW)
echo "Attivazione scudo di sicurezza (Firewall)..."
sudo ufw enable

# Sezione Sicurezza: Attivazione e Regole del Firewall
echo "Configurazione dello scudo di sicurezza..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# Aggiornamento database e installazione patch di sicurezza
echo "Rinforzando le difese del sistema..."
sudo apt update
sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades

# Aggiornamenti di sicurezza automatici
echo "Configurazione aggiornamenti critici..."
sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades

# Modalità Invisibile: Ignora i messaggi di PING (ICMP)
echo "Attivazione modalità invisibile (Ignore PING)..."
sudo sed -i 's/ufw-before-input.*ICMP/ACCEPT/g' /etc/ufw/before.rules # (opzionale, dipende dalla config)
# Il metodo più veloce e sicuro:
sudo bash -c 'echo "net/ipv4/icmp_echo_ignore_all=1" >> /etc/ufw/sysctl.conf'
sudo ufw reload

echo "--- MANUTENZIONE COMPLETATA CON SUCCESSO! ---"

