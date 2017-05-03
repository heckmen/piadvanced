#!/bin/sh
## ddclient

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --title "DDClient" --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install ddclient?" 10 80) 
then
echo "User Declined ddclient"
else
sudo apt-get install -y ddclient
sudo echo "pivpnfirewall=yes" | sudo tee --append /etc/piadvanced/install/firewall.conf
fi }
