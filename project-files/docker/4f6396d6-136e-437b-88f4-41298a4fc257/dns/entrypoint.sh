#!/bin/bash

# RUTA = $(dirname "$(realpath "$0")")

cp "/dns/named.conf.local"  /etc/bind/named.conf.local
cp "/dns/named.conf.options"  /etc/bind/named.conf.options

cp "/dns/db.stark.lan" /var/cache/bind/db.stark.lan
cp "/dns/db.10.168.192" /var/cache/bind/db.10.168.192

cp "/dns/db.lannister.lan" /var/cache/bind/db.lannister.lan
cp "/dns/db.11.168.192" /var/cache/bind/db.11.168.192

cp "/dns/db.targaryen.lan" /var/cache/bind/db.targaryen.lan
cp "/dns/db.57.168.192" /var/cache/bind/db.57.168.192

chown bind:bind /var/cache/bind/*

/etc/init.d/named restart
