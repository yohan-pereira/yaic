#!/bin/bash

HOST=$(curl icanhazip.com)

iperf3 -p 8888 -s -y C -x CMSV -f m -o ~/speed_test >> /var/log/netspeed &
ssh trawl iperf3 -c $HOST -n 3m -p 8888 > /dev/null
sleep 1
kill $!
