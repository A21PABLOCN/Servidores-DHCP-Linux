#!/bin/bash

# RUTA = $(dirname "$(realpath "$0")")

cp "/relay/relay.conf" /etc/default/isc-dhcp-relay

/etc/init.d/isc-dhcp-relay restart