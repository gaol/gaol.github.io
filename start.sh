#!/bin/bash

iface="$1"

if [ "X$iface" == "X" ]; then
  iface="eth1"
fi
echo -e "Bind interface: $iface"
ipadd=$(ifconfig $iface|grep "inet "|tr -s " "|cut -d " " -f3)
echo -e "IP Address: $ipadd"
jekyll serve -H $ipadd
