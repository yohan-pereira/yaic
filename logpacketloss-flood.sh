#!/bin/bash
echo "$( date +'%s' ),$(ping -f -c 100 www.google.com | grep transmitted | awk -F "," '{ print $3 }' | sed -e 's/packet loss//g' -e 's/ //g' )" >> /var/log/packetloss
