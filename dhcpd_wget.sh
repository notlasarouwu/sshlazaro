#!/bin/bash
# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Ismael Verdugo Buzon
# ------------------------------------------
#
#
# declare STRING variable
STRING="Scripts examples"
f_dchpd_conf="https://raw.githubusercontent.com/josemmol/S2I/main/CON-UBS-22-DHCP/etc/dhcp/dhcpd.conf"
#print variable on a screen
echo $STRING

#Install DHCP
apt-get install isc-dhcp-server

# download githup configuration file
wget $f_dchpd_conf

# copy configuration file to etc directory
cp dhcpd.conf /etc/dhcp

systemctl restart isc-dhcp-server
