#!/bin/bash

set -e

# Install UFW from .deb
wget http://ftp.debian.org/debian/pool/main/u/ufw/ufw_0.36.2-1_all.deb
sudo dpkg -i ufw_0.36.2-1_all.deb

echo "Updating system"
sudo apt update

# UFW Firewall Setup
echo "Installing and configuring UFW"
sudo apt install -y ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw --force enable
sudo ufw status verbose

# Suricata IDS Setup
echo "Installing Suricata"
sudo apt install -y suricata
ip a
read -p "Enter active network interface (e.g. eth0): " NET_IFACE
sudo suricata -i "$NET_IFACE" -c /etc/suricata/suricata.yaml -D
echo "Suricata running in background."

# Pentbox Honeypot Setup
echo "we are Setting up Pentbox"
git clone https://github.com/technicaldada/pentbox.git || echo "Pentbox already cloned."
cd pentbox
chmod +x pentbox.rb
sudo ruby pentbox.rb

# Final Notes


echo "Setup Complete. Suggested Tests:"
echo "- Run 'nmap -sS <VM_IP>' from another machine"
echo "- View Suricata logs: sudo tail -f /var/log/suricata/fast.log"
echo "- Try 'telnet <VM_IP> 23' to trigger honeypot"