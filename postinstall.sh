#!/bin/bash
# patch no licence thank tolaris.com
wget https://raw.github.com/andykimpe/postinstall-proxmox/master/patch -O - | patch -p0
sed -i "s|deb https://enterprise.proxmox.com/debian wheezy pve-enterprise|#deb https://enterprise.proxmox.com/debian wheezy pve-enterprise|" "/etc/apt/sources.list.d/pve-enterprise.list"
apt-get update
apt-get -y dist-upgrade