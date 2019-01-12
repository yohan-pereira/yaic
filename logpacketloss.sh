#!/bin/bash
echo "$( date +'%s' ),$(ping -w 60  8.8.8.8 | grep transmitted | awk -F "," '{ print $3 }' | sed -e 's/packet loss//g' -e 's/ //g' -e 's/+1errors/100%/g' )" >> /var/log/packetloss
