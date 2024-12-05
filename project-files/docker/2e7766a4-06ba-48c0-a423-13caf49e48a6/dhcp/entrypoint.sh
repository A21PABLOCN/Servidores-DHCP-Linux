#!/bin/bash

# RUTA = $(dirname "$(realpath "$0")")

cp "/dhcp/dhcp4.json"  /etc/kea/kea-dhcp4.conf
cp "/dhcp/dns.json"  /etc/kea/kea-dhcp-ddns.conf


/etc/init.d/kea-dhcp4-server restart
/etc/init.d/kea-dhcp-ddns-server restart

chown _kea:_kea /var/log/dhcp.log
chmod 644 /var/log/dhcp.log

nohup kea-dhcp-ddns -c /etc/kea/kea-dhcp-ddns.conf > /var/log/kea-dhcp-ddns.log 2>&1 &
